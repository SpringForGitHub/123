unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  lvList: TStringList;
begin
  lvList := TStringList.Create;
  try
    lvList.Add('1');
    lvList.Add('02');
    Memo1.Text := lvList.Text;
  finally
    lvList.Free;
  end;
end;

end.
