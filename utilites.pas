unit utilites;


interface

uses
  Winapi.Windows,
   System.SysUtils
  , System.Classes
  , ShlObj
  , Vcl.StdCtrls
   ,Vcl.Grids
  , ShellAPI
  ;


function BrowseFolder(title: PChar; h: hwnd): String;
procedure ClearStringGrid(Grid:TStringGrid);
procedure ColorGrid(Grid:TStringGrid;ACol,ARow:Integer;MinMax:Integer;Alive:Boolean);
procedure ColorGridSingle(Grid:TStringGrid;ACol,ARow:Integer;MinMax:Integer);
function CntRecurrences(substr, str: string):integer;
procedure DeleteRow(Grid: TStringGrid; ARow: Integer);
function DeleteToRecycle(const FileName: string; Wnd: HWND = 0): Boolean;
function DeleteSquareBrakets(const Str:String):String;
function FindFiles(ListBox:TListBox; const Path, Mask: string; IncludeSubDir: boolean): integer;
function GetColMaxWidth(Grid:TStringGrid;Col:Integer):integer;
function GetJsonString(StrIn:String):String;
function GetTime(StringIn:string):String;
function GetDate(StringIn:string):String;
Procedure MoveFileToDir(fileToMove,dest:String);
procedure Format(L:TLabel;LType:Integer);
function Max(Num1,Num2:integer):Integer;
procedure ResizeCols(Grid:TStringGrid);
procedure ResizeRow(Grid:TStringGrid;ARow:integer);
function RoundTo(const StrIn:Single):string;
Procedure SortCol(Grid:TStringGrid;Col:Integer);
Procedure SortColAsIntInc(Grid:TStringGrid;Col:Integer);
Procedure SortColAsIntDec(Grid:TStringGrid;Col:Integer);
Procedure SortSupp(Grid:TStringGrid;Col:Integer);
procedure SwitchCols(Grid:TStringGrid;src,dst:integer);
function TrimQuotes(InputString:String):string;
function DateTimeToUNIX(DelphiTime : TDateTime): LongWord;
function UNIXToDateTime(UnixTime: LongWord): TDateTime;

implementation



function BrowseFolder(title: PChar; h: hwnd): String;
var
  lpItemID: PItemIDList;
  path: array[0..Max_path] of char; //выбранна€ папка
  BrowseInfo: TBrowseInfo; //настройки диалога
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  SHGetSpecialFolderLocation(h,csidl_desktop,BrowseInfo.pidlRoot);
  //устанавливаем свойства диалогового окна
  with BrowseInfo do begin
    hwndOwner := h; //окно-владелец
    lpszTitle := title; //заголовок диалога
    //не показываем некоторые системные папки: " орзина", "ѕанель управлени€" и т.д
    ulFlags := BIF_RETURNONLYFSDIRS+BIF_EDITBOX+BIF_USENEWUI;
  end;
  //выводим диалог
  lpItemID := SHBrowseForFolder(BrowseInfo);
  //папка, указанна€ юзером, существует?
  if lpItemId <> nil then begin
    SHGetPathFromIDList(lpItemID, Path);
    result:=path;
    GlobalFreePtr(lpItemID); //освобождаем ресурсы
  end;
end;

procedure ClearStringGrid(Grid:TStringGrid);
var
i,j:integer;
begin
for i := 0 to Grid.ColCount-1 do
      for j := Grid.FixedRows+1 to Grid.RowCount-1 do Grid.Cells[i,j]:='';
end;

procedure ColorGrid(Grid:TStringGrid;ACol,ARow:Integer;MinMax:Integer;Alive:Boolean);
var
Rect:TRect;
begin
     rect:=Grid.CellRect(ACol,ARow);
     case MinMax of
     -1:  Grid.Canvas.Font.Color:=RGB(255,0,0);//min
     0: Grid.Canvas.Font.Color:=RGB(0,0,0);//avg
     1: Grid.Canvas.Font.Color:=RGB(0,128,0);//max
     end;
     Grid.Canvas.TextRect(rect,5,5,Grid.Cells[ACol,ARow]);//text color
     case Alive of
     false: Grid.Canvas.Brush.Color:=RGB(255,216,216);//cell color
     true:  Grid.Canvas.Brush.Color:=RGB(216,255,216);
     end;
     Grid.Canvas.FillRect(rect);
     Grid.Canvas.TextOut(Rect.Left+5, Rect.Top, Grid.Cells[ACol, ARow]);
end;

procedure ColorGridSingle(Grid:TStringGrid;ACol,ARow:Integer;MinMax:Integer);
var
Rect:TRect;
begin
     rect:=Grid.CellRect(ACol,ARow);
     case MinMax of
     -1:  Grid.Canvas.Font.Color:=RGB(255,0,0);//min
     0: Grid.Canvas.Font.Color:=RGB(0,0,0);//avg
     1: Grid.Canvas.Font.Color:=RGB(0,128,0);//max
     end;
     Grid.Canvas.TextRect(rect,5,5,Grid.Cells[ACol,ARow]);//text color

     Grid.Canvas.FillRect(rect);
     Grid.Canvas.TextOut(Rect.Left+5, Rect.Top, Grid.Cells[ACol, ARow]);
end;


function CntRecurrences(substr, str: string):integer;
var
  cnt: integer;
begin
  cnt := 0;
  if Pos(substr,str)=0 then
        begin
          cnt:=0;
        end;
  while Pos(substr,str)<>0 do
        begin
        Delete(str,Pos(substr,str),1);
        inc(cnt);
        end;
  Result := cnt;
end;

procedure DeleteRow(Grid: TStringGrid; ARow: Integer);
var
  i: Integer;
begin
  for i := ARow to Grid.RowCount - 2 do
      Grid.Rows[i].Assign(Grid.Rows[i + 1]);
  Grid.RowCount := Grid.RowCount - 1;
end;

function DeleteToRecycle(const FileName: string; Wnd: HWND): Boolean;
var
  FileOp: TSHFileOpStruct;
begin
  FillChar(FileOp, SizeOf(FileOp), 0);
  FileOp.Wnd := Wnd;
  FileOp.wFunc := FO_DELETE;
  FileOp.pFrom := PChar(FileName+#0);
  FileOp.fFlags := FOF_ALLOWUNDO or FOF_NOERRORUI or FOF_SILENT;
  Result := (SHFileOperation(FileOp) = 0);
end;

function DeleteSquareBrakets(const Str:String):String;
var
f,l:Integer;
begin
  f:=Pos('[',Str);
  l:=LastDelimiter(']',Str);
  if ((f=1) AND (l=Length(Str))) then
  begin
    Result:=Copy(Str,f+1,l-2)
  end
  else Result:=Str;
end;


function FindFiles(ListBox:TListBox; const Path, Mask: string; IncludeSubDir: boolean): integer;
var
 FindResult: integer;
 SearchRec : TSearchRec;
begin
 result := 0;
 FindResult := FindFirst(Path + Mask, faAnyFile - faDirectory, SearchRec);
 while FindResult = 0 do
 begin
    if SearchRec.Name<>'temp.wotreplay' then
    ListBox.Items.Add(Path + SearchRec.Name);
    result := result + 1;
    FindResult := FindNext(SearchRec);
 end;
 System.SysUtils.FindClose(SearchRec);
end;


function GetColMaxWidth(Grid:TStringGrid;Col:Integer):integer;
var
i,MaxW:integer;
begin
MaxW:=0;
for i := 0 to Grid.RowCount-1 do
  begin
      if Grid.Canvas.TextWidth(grid.cells[Col, i])>MaxW then MaxW:=Grid.Canvas.TextWidth(grid.cells[Col, i]);
  end;
Result:=maxW+Grid.GridLineWidth+7;
end;

function GetTime(StringIn:string):String;
begin
Result:=Copy(StringIn,Pos(' ',StringIn)+1,5)
end;

function GetDate(StringIn:string):String;
begin
Result:=Copy(StringIn,0,10);
end;

function GetJsonString(StrIn:String):String;
var
i,first,last,count:Integer;
TempString:String;

begin
first:=Pos('{"',StrIn);
Delete(StrIn,1,first-1);

  count:=0;
  for i := 1 to Length(StrIn) do
      begin
        TempString:=StrIn[i];
        if StrIn[i]='{' then count:=count+1;
        if StrIn[i]='}' then count:=count-1;
        if count=0 then
          begin
            last:=i; Break;
          end;
      end;
  Delete(StrIn,last+1,Length(StrIn));

Result:=StrIn;
end;


Procedure MoveFileToDir(fileToMove,dest:String);
var
f_path,f_name,f_newpath:string;
begin
f_path:=ExtractFileDir(fileToMove);
f_name:=ExtractFileName(fileToMove);
f_newpath:=f_path+'\'+dest+'\';
ForceDirectories(f_newpath);
f_newpath:=f_newpath+f_name;
try
  MoveFile(PChar(fileToMove),PChar(f_newpath));
finally

end;

end;


function RealMod(const Num,Divs: single): Integer;
var
i: integer;
begin
 i := Trunc(Num / Divs);
 Result :=  i;
end;

function RealDiv(const Num,Mods: single): single;
var
i: integer;
begin
 i := Trunc(Num / Mods);
 Result := Num - Mods * i;
end;

procedure Format(L:TLabel;LType:Integer);
var
TempString1,
TempString2
:string;
TempS1,TempS2
:Single;
divby:Integer;
Lower,Upper:String;
begin
if Pos('/',L.Caption)=0 then Exit;
divby:=1;
    case LType of
    0: begin//no type
        Upper:=' ';
        Lower:='';
        divby:=1000
       end;
    1: begin//time
        Upper:=' м ';
        Lower:=' с';
        divby:=60
       end;
    2: begin//distance
        Upper:=' км ';
        Lower:=' м';
        divby:=1000;
       end;
    end;

    TempString1:=Copy(L.Caption,0,Pos(' / ',L.Caption)-1);
    TempString2:=Copy(L.Caption,Pos(' / ',L.Caption)+3,Length(L.Caption));

    if abs(StrToFloat(TempString1))>divby then
      begin
          TempS1:=RealMod(StrToFloat(TempString1),divby);
          TempS2:=abs(RealDiv(StrToFloat(TempString1),divby));
          TempString1:=FloatToStr(TempS1)+Upper+RoundTo(TempS2)+Lower;
      end;

    if abs(StrToFloat(TempString2))>divby then
      begin
          TempS1:=RealMod(StrToFloat(TempString2),divby);
          TempS2:=abs(RealDiv(StrToFloat(TempString2),divby));
          TempString2:=FloatToStr(TempS1)+Upper+RoundTo(TempS2)+Lower;
      end;

    L.Caption:=TempString1+' / '+TempString2;

end;

function Max(Num1,Num2:integer):Integer;
begin
if Num1>=Num2 then Result:=Num1
else Result:=Num2;
end;

procedure ResizeCols(Grid:TStringGrid);
var Col,Row,MaxW:integer;
begin
for Col := 0 to Grid.ColCount-1 do
    begin
        MaxW:=0;
        for Row := 0 to Grid.RowCount-1 do
          begin
              if Grid.Canvas.TextWidth(grid.cells[Col, Row])>MaxW then
                    MaxW:=Grid.Canvas.TextWidth(grid.cells[Col, Row]);
          end;
        Grid.ColWidths[Col]:=maxW+Grid.GridLineWidth+10;
    end;

end;


procedure ResizeRow(Grid:TStringGrid;ARow:integer);
var
Width,ACol:integer;
begin

  for ACol := 0 to Grid.ColCount-1 do
    begin
    Width:=Grid.Canvas.TextWidth(grid.cells[ACol, ARow]);
        if Grid.ColWidths[ACol]<Width+Grid.GridLineWidth+10 then
                Grid.ColWidths[ACol]:=Width+Grid.GridLineWidth+10;
    end;
end;


function RoundTo(const StrIn:Single):string;
var
prec,ptr:integer;
num:string;
begin
      num:=FloatToStr(StrIn);
      if Pos(',',num)=0 then result:=num
      else
        begin
          prec:=2;
          ptr:=Pos(',',num);
          ptr:=ptr+prec;
          result:=Copy(num,0,ptr);
        end;

end;

Procedure SortSupp(Grid:TStringGrid;Col:Integer);
var
i:integer;
TmpRow:TStringList;
Sorted:bool;
TempString:string;
Previous,Next:Integer;
begin
TmpRow := TStringList.Create;
    repeat
       Sorted:=false;
       for i := Grid.FixedRows to Grid.RowCount-2 do
         begin
         if ((Grid.Cells[Col,i]='') OR (Grid.Cells[Col,i+1]='')) then Continue;

         if Pos(';',Grid.Cells[Col,i])<>0 then
           TempString:=Copy(Grid.Cells[Col,i],0,Pos(';',Grid.Cells[Col,i])-1)
           else
           TempString:=Grid.Cells[Col,i];
         Previous:=StrToInt(Copy(TempString,0,Pos(' / ',TempString)-1));
         Delete(TempString,1,Pos(' / ',TempString)+2);
         Previous:=Previous+StrToInt(TempString);

         if Pos(';',Grid.Cells[Col,i+1])<>0 then
           TempString:=Copy(Grid.Cells[Col,i+1],0,Pos(';',Grid.Cells[Col,i+1])-1)
           else
           TempString:=Grid.Cells[Col,i+1];
         Next:=StrToInt(Copy(TempString,0,Pos(' / ',TempString)-1));
         Delete(TempString,1,Pos(' / ',TempString)+2);
         Next:=Next+StrToInt(TempString);

         if Previous<Next then
          begin
            TmpRow.Assign(Grid.Rows[i]);
            Grid.Rows[i]:=Grid.Rows[i+1];
            Grid.Rows[i+1].Assign(TmpRow);
            TmpRow.Clear;
            Sorted:=true;
         end;
         end;
    until not Sorted;
TmpRow.Free;
end;



Procedure SortCol(Grid:TStringGrid;Col:Integer);
var
i:integer;
TmpRow:TStringList;
Sorted:bool;
Prev,Next:String;
begin
TmpRow := TStringList.Create;
    repeat
       Sorted:=false;
       for i := Grid.FixedRows to Grid.RowCount-2 do
         begin
         if ((Grid.Cells[Col,i]='') OR (Grid.Cells[Col,i+1]='')) then Continue;

         if Pos(';',Grid.Cells[Col,i])=0 then
              begin
                 Prev:=Grid.Cells[Col,i];//дл€ колонок дамага и помощи
                 Next:=Grid.Cells[Col,i+1];
              end
        else
              begin
                 Prev:=Copy(Grid.Cells[Col,i],0,Pos(';',Grid.Cells[Col,i])-1);//дл€ колонок опыта
                 Next:=Copy(Grid.Cells[Col,i+1],0,Pos(';',Grid.Cells[Col,i+1])-1);
              end;

         if StrToFloat(Prev)<StrToFloat(Next) then
          begin
            TmpRow.Assign(Grid.Rows[i]);
            Grid.Rows[i]:=Grid.Rows[i+1];
            Grid.Rows[i+1].Assign(TmpRow);
            TmpRow.Clear;
            Sorted:=true;
         end;
         end;
    until not Sorted;
TmpRow.Free;
end;

Procedure SortColAsIntInc(Grid:TStringGrid;Col:Integer);
var
i:integer;
TmpRow:TStringList;
Sorted:bool;
Prev,Next:String;
PrevInt,NextInt:integer;
begin
TmpRow := TStringList.Create;
    repeat
       Sorted:=false;
       for i := Grid.FixedRows to Grid.RowCount-2 do
         begin

          Prev:=Grid.Cells[Col,i];//дл€ колонок дамага и помощи
          Next:=Grid.Cells[Col,i+1];

          if ((Prev='') AND (Next='')) then Continue;

          if ((TryStrToInt(Prev,PrevInt)=true) AND (TryStrToInt(Next,NextInt)=true)) then
              begin//если числа
                if PrevInt<NextInt then
                    begin
                        TmpRow.Assign(Grid.Rows[i]);
                        Grid.Rows[i]:=Grid.Rows[i+1];
                        Grid.Rows[i+1].Assign(TmpRow);
                        TmpRow.Clear;
                        Sorted:=true;
                    end;
              end
          else//если строки
              begin
                if AnsiCompareStr(Prev,Next)<0 then
                    begin
                    TmpRow.Assign(Grid.Rows[i]);
                    Grid.Rows[i]:=Grid.Rows[i+1];
                    Grid.Rows[i+1].Assign(TmpRow);
                    TmpRow.Clear;
                    Sorted:=true;
                    end;
              end;

         end;
    until not Sorted;
TmpRow.Free;
end;


Procedure SortColAsIntDec(Grid:TStringGrid;Col:Integer);
var
i:integer;
TmpRow:TStringList;
Sorted:bool;
Prev,Next:String;
PrevInt,NextInt:integer;
begin
TmpRow := TStringList.Create;
    repeat
       Sorted:=false;
       for i := Grid.FixedRows to Grid.RowCount-2 do
         begin

          Prev:=Grid.Cells[Col,i];//дл€ колонок дамага и помощи
          Next:=Grid.Cells[Col,i+1];

          if ((Prev='') AND (Next='')) then Continue;

          if ((TryStrToInt(Prev,PrevInt)=true) AND (TryStrToInt(Next,NextInt)=true)) then
              begin//если числа
                if PrevInt>NextInt then
                    begin
                        TmpRow.Assign(Grid.Rows[i]);
                        Grid.Rows[i]:=Grid.Rows[i+1];
                        Grid.Rows[i+1].Assign(TmpRow);
                        TmpRow.Clear;
                        Sorted:=true;
                    end;
              end
          else//если строки
              begin
                if AnsiCompareStr(Prev,Next)>0 then
                    begin
                    TmpRow.Assign(Grid.Rows[i]);
                    Grid.Rows[i]:=Grid.Rows[i+1];
                    Grid.Rows[i+1].Assign(TmpRow);
                    TmpRow.Clear;
                    Sorted:=true;
                    end;
              end;

         end;
    until not Sorted;
TmpRow.Free;
end;




procedure SwitchCols(Grid:TStringGrid;src,dst:integer);
var i:integer;
TempString:String;
begin
  for i := 0 to Grid.RowCount-1 do
  begin
  TempString:=Grid.Cells[dst,i];
  Grid.Cells[dst,i]:='';
  Grid.Cells[dst,i]:=Grid.Cells[src,i];
  Grid.Cells[src,i]:=TempString;
  end;
end;

function TrimQuotes(InputString:String):string;
begin
InputString:=StringReplace(InputString,'"','',[rfReplaceAll]);
result:=InputString;
end;

function DateTimeToUNIX(DelphiTime : TDateTime): LongWord;
begin
Result := Round((DelphiTime - 25569) * 86400);
end;

function UNIXToDateTime(UnixTime: LongWord): TDateTime;
begin
Result := (UnixTime / 86400) + 25569;
end;

end.
