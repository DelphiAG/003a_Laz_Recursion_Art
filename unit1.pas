unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure Circle(x,y,r : integer);
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button1Click(Sender: TObject);
begin
    Form1.Canvas.Pen.Color:=clBlack;
  Circle(Width div 2, Height div 2, Height div 6 );
end;

procedure TForm1.Circle(x, y, r: integer);
begin
  Form1.Canvas.EllipseC(x,y,r,r);
  sleep(10);
  if (r > 3) then
     begin
       Circle(x-r,y,r div 2);
       Circle(x+r,y,r div 2);
       Circle(x,y+r,r div 2);
       Circle(x,y-r,r div 2);
     end;
end;

end.

