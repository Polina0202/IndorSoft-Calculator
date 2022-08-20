unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    calculatorEdit: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    ButtonClear: TButton;
    ButtonDelete: TButton;
    ButtonPlus: TButton;
    ButtonMinus: TButton;
    ButtonMultiply: TButton;
    ButtonDivide: TButton;
    ButtonEqually: TButton;
    ButtonFloat: TButton;
    ButtonPercent: TButton;
    ButtonPart: TButton;
    ButtonSquare: TButton;
    ButtonSquareRoot: TButton;
    Label1: TLabel;
    procedure ButtonClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonEquallyClick(Sender: TObject);
    procedure ButtonPlusClick(Sender: TObject);
    procedure ButtonMinusClick(Sender: TObject);
    procedure ButtonMultiplyClick(Sender: TObject);
    procedure ButtonDivideClick(Sender: TObject);
    procedure calculatorEditClick(Sender: TObject);
    procedure ButtonSquareClick(Sender: TObject);
    procedure ButtonSquareRootClick(Sender: TObject);
    procedure ButtonPercentClick(Sender: TObject);
    procedure ButtonPartClick(Sender: TObject);
    procedure ButtonFloatClick(Sender: TObject);
    procedure calculatorEditKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    procedure CheckingStates(text: string; p: char);
    procedure GetResult(x, y: Double; p: char);
    procedure CheckForFloat;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  var digitOne: Double;
  var digitTwo: Double;
  var digitProcedure: char;
  var flagEnd: boolean;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  digitOne := 0;
  digitTwo := 0;
  digitProcedure := '0';
  flagEnd := false;
end;

procedure TForm1.GetResult(x, y: Double; p: char);
begin
  var z: Double := 0;
  case p of
    '+': z:=x+y;
    '-': z:=x-y;
    '*': z:=x*y;
    '/': z:=x/y
  end;
  digitOne := 0;
  digitTwo := 0;
  digitProcedure := '0';
  calculatorEdit.Text := FloatToStr(z);
  flagEnd := true;
end;

procedure TForm1.CheckForFloat;
begin
  var x: string;
  x := calculatorEdit.Text;
  if (Pos(',', x) = 0)
  then calculatorEdit.Text := x + ',';
end;

procedure TForm1.CheckingStates(text: string; p: char);
begin
if (text <> '') and (digitOne = 0)
  then begin
    digitOne := StrToFloat(text);
    digitProcedure := p;
    calculatorEdit.Text := '';
  end else if (digitOne <> 0) and (text <> '')
  then begin
  digitTwo := StrToFloat(text);
  if (p = '=')
  then GetResult(digitOne, digitTwo, digitProcedure);
  end else digitProcedure := p;
end;

//общая процедура
procedure TForm1.ButtonClick(Sender: TObject);
begin
  calculatorEdit.Text := calculatorEdit.Text + IntToStr(TComponent(Sender).Tag);

  if flagEnd = true then begin
   calculatorEdit.Text := '';
   calculatorEdit.Text := IntToStr(TComponent(Sender).Tag);
   flagEnd := false;
  end;
end;

//удаление
procedure TForm1.ButtonClearClick(Sender: TObject);
begin
 calculatorEdit.Text := '';
 digitOne := 0;
 digitTwo := 0;
 digitProcedure := '0';
end;

procedure TForm1.ButtonDeleteClick(Sender: TObject);
var textLenght:integer;
var textString:string;
begin
  textLenght := Length(calculatorEdit.Text);
  textString := calculatorEdit.Text;
  Delete(textString, textLenght, 1);
  calculatorEdit.Text := textString;
end;

//процедуры
procedure TForm1.ButtonEquallyClick(Sender: TObject);
begin
   if (digitProcedure <> '0')
   then begin
   CheckingStates(calculatorEdit.Text, '=');
   end;
end;

procedure TForm1.ButtonFloatClick(Sender: TObject);
begin
  CheckForFloat;
end;

procedure TForm1.ButtonDivideClick(Sender: TObject);
begin
  CheckingStates(calculatorEdit.Text, '/')
end;

procedure TForm1.ButtonMinusClick(Sender: TObject);
begin
   CheckingStates(calculatorEdit.Text, '-')
end;

procedure TForm1.ButtonMultiplyClick(Sender: TObject);
begin
  CheckingStates(calculatorEdit.Text, '*')
end;

procedure TForm1.ButtonPartClick(Sender: TObject);
begin
   var x: double;
   x := StrToFloat(calculatorEdit.Text);
   calculatorEdit.Text := FloatToStr(1/x);
end;

procedure TForm1.ButtonPercentClick(Sender: TObject);
begin
   var x: double;
   x := StrToFloat(calculatorEdit.Text);
   calculatorEdit.Text := FloatToStr(x/100);
end;

procedure TForm1.ButtonPlusClick(Sender: TObject);
begin
   CheckingStates(calculatorEdit.Text, '+')
end;

procedure TForm1.ButtonSquareClick(Sender: TObject);
begin
   var x: double;
   x := StrToFloat(calculatorEdit.Text);
   calculatorEdit.Text := FloatToStr(Sqr (x));
end;

procedure TForm1.ButtonSquareRootClick(Sender: TObject);
begin
  var x: double;
  x := StrToFloat(calculatorEdit.Text);
  calculatorEdit.Text := FloatToStr(Sqrt (x));
end;

//очищение поля ввода
procedure TForm1.calculatorEditClick(Sender: TObject);
begin
   if flagEnd = true then begin
   calculatorEdit.Text := '';
   flagEnd := false;
  end;
end;

procedure TForm1.calculatorEditKeyPress(Sender: TObject; var Key: Char);
begin
  if (CharInSet(key, ['0'..'9']) = false) and (getasynckeystate($08) = 0)
  then Key := #0;
end;

end.
