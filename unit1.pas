unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    B9: TButton;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    mul: TButton;
    clear01: TButton;
    B6: TButton;
    B7: TButton;
    B8: TButton;
    B0: TButton;
    div1: TButton;
    sub: TButton;
    plus: TButton;
    B1: TButton;
    B2: TButton;
    B3: TButton;
    B4: TButton;
    B5: TButton;
    Edit1: TEdit;
    Edit3: TEdit;
    procedure B0KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure B1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure B2KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure B3KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure B4KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure B5Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure B0Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure B5KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure B6KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure B7Click(Sender: TObject);
    procedure B7KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure B8KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure B9KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure BitBtn1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure BitBtn1KeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure clear01Click(Sender: TObject);
    procedure B6Click(Sender: TObject);
    procedure B8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure B9Click(Sender: TObject);
    procedure clear01KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure clear01KeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure div1Click(Sender: TObject);
    procedure div1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure Edit3KeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure equalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mulClick(Sender: TObject);
    procedure mulKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure plusClick(Sender: TObject);
    procedure plusKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure subClick(Sender: TObject);
    procedure subKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
  private
  var
    Result: double;
    num1, num2: integer;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.B1Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '1';
end;

procedure TForm1.B5Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '5';
end;

procedure TForm1.B1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := B6;
  end;
end;



procedure TForm1.B0KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := Edit1;
    39: ActiveControl := BitBtn1;
  end;
end;



procedure TForm1.B2KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := B7;
  end;
end;


procedure TForm1.B3KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := B8;
  end;
end;



procedure TForm1.B4KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := B9;
  end;
end;



procedure TForm1.B4Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '4';
end;

procedure TForm1.B3Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '3';
end;

procedure TForm1.B0Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '0';
end;

procedure TForm1.B2Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '2';
end;

procedure TForm1.B5KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := B0;
  end;
end;



procedure TForm1.B6KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := Edit1;
  end;
end;



procedure TForm1.B7Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '7';
end;

procedure TForm1.B7KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := Edit1;
  end;
end;



procedure TForm1.B8KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := Edit1;
  end;
end;


procedure TForm1.B9KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := Edit1;
  end;
end;

procedure TForm1.BitBtn1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40, 39: ActiveControl := Edit1;
    37: ActiveControl := B0;

  end;
end;

procedure TForm1.BitBtn1KeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    38: ActiveControl := clear01;
  end;
end;

procedure TForm1.clear01Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit1.Caption := '0';
  Edit2.Caption := '0';
end;

procedure TForm1.B6Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '6';
end;

procedure TForm1.B8Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '8';
end;

procedure TForm1.B9Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '9';
end;

procedure TForm1.clear01KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := BitBtn1;
  end;
end;

procedure TForm1.clear01KeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    38: ActiveControl := plus;
  end;
end;

procedure TForm1.div1Click(Sender: TObject);
begin
  num1 := StrToInt(Edit1.Text);
  num2 := StrToInt(Edit2.Text);
  if num2 = 0 then
    ShowMessage('can not divide 0')
  else
  begin
    Result := num1 / num2;
    Edit3.Text := FloatToStr(Result);
  end;
end;

procedure TForm1.div1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := B4;
  end;
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    38, 40: ActiveControl := mul;
    13: ActiveControl := Edit2;
    39: ActiveControl := Edit2;
  end;
end;

procedure TForm1.Edit2KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    38, 40: ActiveControl := plus;
    37: ActiveControl := Edit1;
  end;
end;

procedure TForm1.Edit3KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := B1;
    39: ActiveControl := mul;
  end;
end;

procedure TForm1.Edit3KeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    38: ActiveControl := Edit1;
  end;
end;



procedure TForm1.equalClick(Sender: TObject);
begin
  Edit3.Text := FloatToStr(Result);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ActiveControl := Edit1;
  Edit1.Caption := '0';
  Edit2.Caption := '0';
end;

procedure TForm1.mulClick(Sender: TObject);
begin
  num1 := StrToInt(Edit1.Text);
  num2 := StrToInt(Edit2.Text);
  Result := num1 * num2;
  Edit3.Text := FloatToStr(Result);
end;

procedure TForm1.mulKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := B3;
  end;
end;

procedure TForm1.plusClick(Sender: TObject);
begin
  num1 := StrToInt(Edit1.Text);
  num2 := StrToInt(Edit2.Text);
  Result := num1 + num2;
  Edit3.Text := FloatToStr(Result);
end;

procedure TForm1.plusKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := clear01;
  end;
end;

procedure TForm1.subClick(Sender: TObject);
begin
  num1 := StrToInt(Edit1.Text);
  num2 := StrToInt(Edit2.Text);
  Result := num1 - num2;
  Edit3.Text := FloatToStr(Result);
end;

procedure TForm1.subKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  case Key of
    40: ActiveControl := B5;
  end;
end;

end.

