require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmVehicles()
    __o_rrpgObjs.beginObjectsLoading();

    local obj = gui.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmVehicles");
    obj:setAlign("client");

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setColor("grey");
    obj.rectangle1:setWidth(1363);
    obj.rectangle1:setHeight(686);
    obj.rectangle1:setName("rectangle1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(580);
    obj.layout1:setHeight(60);
    obj.layout1:setName("layout1");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setName("rectangle2");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(0);
    obj.layout2:setWidth(220);
    obj.layout2:setHeight(60);
    obj.layout2:setName("layout2");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout2);
    obj.rectangle3:setLeft(4);
    obj.rectangle3:setTop(4);
    obj.rectangle3:setWidth(52);
    obj.rectangle3:setHeight(52);
    obj.rectangle3:setColor("black");
    obj.rectangle3:setStrokeColor("white");
    obj.rectangle3:setStrokeSize(1);
    obj.rectangle3:setName("rectangle3");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.layout2);
    obj.image1:setLeft(10);
    obj.image1:setTop(10);
    obj.image1:setWidth(40);
    obj.image1:setHeight(40);
    obj.image1:setSRC("/Cyberpunk2020/images/wheel.png");
    obj.image1:setName("image1");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout2);
    obj.rectangle4:setLeft(54);
    obj.rectangle4:setTop(4);
    obj.rectangle4:setWidth(52);
    obj.rectangle4:setHeight(52);
    obj.rectangle4:setColor("black");
    obj.rectangle4:setStrokeColor("white");
    obj.rectangle4:setStrokeSize(1);
    obj.rectangle4:setName("rectangle4");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setLeft(60);
    obj.edit1:setTop(10);
    obj.edit1:setWidth(40);
    obj.edit1:setHeight(40);
    obj.edit1:setField("wheel");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setFontSize(20);
    obj.edit1:setTransparent(true);
    obj.edit1:setName("edit1");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout2);
    obj.label1:setLeft(110);
    obj.label1:setTop(5);
    obj.label1:setWidth(80);
    obj.label1:setHeight(20);
    obj.label1:setText("Links");
    obj.label1:setHorzTextAlign("trailing");
    obj.label1:setName("label1");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setLeft(195);
    obj.edit2:setTop(5);
    obj.edit2:setWidth(30);
    obj.edit2:setHeight(25);
    obj.edit2:setField("wheel_link");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setName("edit2");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setLeft(110);
    obj.label2:setTop(30);
    obj.label2:setWidth(80);
    obj.label2:setHeight(20);
    obj.label2:setText("Computador");
    obj.label2:setHorzTextAlign("trailing");
    obj.label2:setName("label2");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout2);
    obj.edit3:setLeft(195);
    obj.edit3:setTop(30);
    obj.edit3:setWidth(30);
    obj.edit3:setHeight(25);
    obj.edit3:setField("wheel_computer");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setName("edit3");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setLeft(230);
    obj.layout3:setTop(0);
    obj.layout3:setWidth(225);
    obj.layout3:setHeight(60);
    obj.layout3:setName("layout3");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout3);
    obj.rectangle5:setLeft(4);
    obj.rectangle5:setTop(4);
    obj.rectangle5:setWidth(52);
    obj.rectangle5:setHeight(52);
    obj.rectangle5:setColor("black");
    obj.rectangle5:setStrokeColor("white");
    obj.rectangle5:setStrokeSize(1);
    obj.rectangle5:setName("rectangle5");

    obj.image2 = gui.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.layout3);
    obj.image2:setLeft(10);
    obj.image2:setTop(10);
    obj.image2:setWidth(40);
    obj.image2:setHeight(40);
    obj.image2:setSRC("/Cyberpunk2020/images/pistol.png");
    obj.image2:setName("image2");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout3);
    obj.rectangle6:setLeft(54);
    obj.rectangle6:setTop(4);
    obj.rectangle6:setWidth(52);
    obj.rectangle6:setHeight(52);
    obj.rectangle6:setColor("black");
    obj.rectangle6:setStrokeColor("white");
    obj.rectangle6:setStrokeSize(1);
    obj.rectangle6:setName("rectangle6");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout3);
    obj.edit4:setLeft(60);
    obj.edit4:setTop(10);
    obj.edit4:setWidth(40);
    obj.edit4:setHeight(40);
    obj.edit4:setField("pistol");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setFontSize(20);
    obj.edit4:setTransparent(true);
    obj.edit4:setName("edit4");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout3);
    obj.label3:setLeft(110);
    obj.label3:setTop(5);
    obj.label3:setWidth(80);
    obj.label3:setHeight(20);
    obj.label3:setText("Links");
    obj.label3:setHorzTextAlign("trailing");
    obj.label3:setName("label3");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout3);
    obj.edit5:setLeft(195);
    obj.edit5:setTop(5);
    obj.edit5:setWidth(30);
    obj.edit5:setHeight(25);
    obj.edit5:setField("pistol_link");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setName("edit5");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout3);
    obj.label4:setLeft(110);
    obj.label4:setTop(30);
    obj.label4:setWidth(80);
    obj.label4:setHeight(20);
    obj.label4:setText("Computador");
    obj.label4:setHorzTextAlign("trailing");
    obj.label4:setName("label4");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout3);
    obj.edit6:setLeft(195);
    obj.edit6:setTop(30);
    obj.edit6:setWidth(30);
    obj.edit6:setHeight(25);
    obj.edit6:setField("pistol_computer");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setName("edit6");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout1);
    obj.layout4:setLeft(460);
    obj.layout4:setTop(0);
    obj.layout4:setWidth(115);
    obj.layout4:setHeight(60);
    obj.layout4:setName("layout4");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout4);
    obj.rectangle7:setLeft(4);
    obj.rectangle7:setTop(4);
    obj.rectangle7:setWidth(52);
    obj.rectangle7:setHeight(52);
    obj.rectangle7:setColor("black");
    obj.rectangle7:setStrokeColor("white");
    obj.rectangle7:setStrokeSize(1);
    obj.rectangle7:setName("rectangle7");

    obj.image3 = gui.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.layout4);
    obj.image3:setLeft(10);
    obj.image3:setTop(10);
    obj.image3:setWidth(40);
    obj.image3:setHeight(40);
    obj.image3:setSRC("/Cyberpunk2020/images/heart.png");
    obj.image3:setName("image3");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout4);
    obj.rectangle8:setLeft(54);
    obj.rectangle8:setTop(4);
    obj.rectangle8:setWidth(52);
    obj.rectangle8:setHeight(52);
    obj.rectangle8:setColor("black");
    obj.rectangle8:setStrokeColor("white");
    obj.rectangle8:setStrokeSize(1);
    obj.rectangle8:setName("rectangle8");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout4);
    obj.edit7:setLeft(60);
    obj.edit7:setTop(10);
    obj.edit7:setWidth(40);
    obj.edit7:setHeight(40);
    obj.edit7:setField("heart");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setFontSize(20);
    obj.edit7:setTransparent(true);
    obj.edit7:setName("edit7");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(70);
    obj.layout5:setWidth(170);
    obj.layout5:setHeight(135);
    obj.layout5:setName("layout5");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout5);
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("black");
    obj.rectangle9:setName("rectangle9");

    obj.radioButton1 = gui.fromHandle(_obj_newObject("radioButton"));
    obj.radioButton1:setParent(obj.layout5);
    obj.radioButton1:setLeft(5);
    obj.radioButton1:setTop(5);
    obj.radioButton1:setWidth(60);
    obj.radioButton1:setHeight(20);
    obj.radioButton1:setField("marcha1");
    obj.radioButton1:setText("1º - R");
    obj.radioButton1:setGroupName("marcha");
    obj.radioButton1:setName("radioButton1");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout5);
    obj.edit8:setLeft(65);
    obj.edit8:setTop(5);
    obj.edit8:setWidth(100);
    obj.edit8:setHeight(25);
    obj.edit8:setField("marcha1_details");
    obj.edit8:setName("edit8");

    obj.radioButton2 = gui.fromHandle(_obj_newObject("radioButton"));
    obj.radioButton2:setParent(obj.layout5);
    obj.radioButton2:setLeft(5);
    obj.radioButton2:setTop(30);
    obj.radioButton2:setWidth(60);
    obj.radioButton2:setHeight(20);
    obj.radioButton2:setField("marcha2");
    obj.radioButton2:setText("2º");
    obj.radioButton2:setGroupName("marcha");
    obj.radioButton2:setName("radioButton2");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout5);
    obj.edit9:setLeft(65);
    obj.edit9:setTop(30);
    obj.edit9:setWidth(100);
    obj.edit9:setHeight(25);
    obj.edit9:setField("marcha2_details");
    obj.edit9:setName("edit9");

    obj.radioButton3 = gui.fromHandle(_obj_newObject("radioButton"));
    obj.radioButton3:setParent(obj.layout5);
    obj.radioButton3:setLeft(5);
    obj.radioButton3:setTop(55);
    obj.radioButton3:setWidth(60);
    obj.radioButton3:setHeight(20);
    obj.radioButton3:setField("marcha3");
    obj.radioButton3:setText("3º");
    obj.radioButton3:setGroupName("marcha");
    obj.radioButton3:setName("radioButton3");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout5);
    obj.edit10:setLeft(65);
    obj.edit10:setTop(55);
    obj.edit10:setWidth(100);
    obj.edit10:setHeight(25);
    obj.edit10:setField("marcha3_details");
    obj.edit10:setName("edit10");

    obj.radioButton4 = gui.fromHandle(_obj_newObject("radioButton"));
    obj.radioButton4:setParent(obj.layout5);
    obj.radioButton4:setLeft(5);
    obj.radioButton4:setTop(80);
    obj.radioButton4:setWidth(60);
    obj.radioButton4:setHeight(20);
    obj.radioButton4:setField("marcha4");
    obj.radioButton4:setText("4º");
    obj.radioButton4:setGroupName("marcha");
    obj.radioButton4:setName("radioButton4");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout5);
    obj.edit11:setLeft(65);
    obj.edit11:setTop(80);
    obj.edit11:setWidth(100);
    obj.edit11:setHeight(25);
    obj.edit11:setField("marcha4_details");
    obj.edit11:setName("edit11");

    obj.radioButton5 = gui.fromHandle(_obj_newObject("radioButton"));
    obj.radioButton5:setParent(obj.layout5);
    obj.radioButton5:setLeft(5);
    obj.radioButton5:setTop(105);
    obj.radioButton5:setWidth(60);
    obj.radioButton5:setHeight(20);
    obj.radioButton5:setField("marcha5");
    obj.radioButton5:setText("5º");
    obj.radioButton5:setGroupName("marcha");
    obj.radioButton5:setName("radioButton5");

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout5);
    obj.edit12:setLeft(65);
    obj.edit12:setTop(105);
    obj.edit12:setWidth(100);
    obj.edit12:setHeight(25);
    obj.edit12:setField("marcha5_details");
    obj.edit12:setName("edit12");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(215);
    obj.layout6:setWidth(170);
    obj.layout6:setHeight(160);
    obj.layout6:setName("layout6");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout6);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("black");
    obj.rectangle10:setName("rectangle10");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout6);
    obj.label5:setLeft(5);
    obj.label5:setTop(5);
    obj.label5:setWidth(80);
    obj.label5:setHeight(20);
    obj.label5:setText("Estrutura");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setName("label5");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout6);
    obj.edit13:setLeft(85);
    obj.edit13:setTop(5);
    obj.edit13:setWidth(40);
    obj.edit13:setHeight(25);
    obj.edit13:setField("estrutura_atual");
    obj.edit13:setName("edit13");

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout6);
    obj.edit14:setLeft(125);
    obj.edit14:setTop(5);
    obj.edit14:setWidth(40);
    obj.edit14:setHeight(25);
    obj.edit14:setField("estrutura_total");
    obj.edit14:setName("edit14");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout6);
    obj.label6:setLeft(5);
    obj.label6:setTop(30);
    obj.label6:setWidth(80);
    obj.label6:setHeight(20);
    obj.label6:setText("Frontal");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setName("label6");

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout6);
    obj.edit15:setLeft(85);
    obj.edit15:setTop(30);
    obj.edit15:setWidth(40);
    obj.edit15:setHeight(25);
    obj.edit15:setField("estrutura_frontal_atual");
    obj.edit15:setName("edit15");

    obj.edit16 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout6);
    obj.edit16:setLeft(125);
    obj.edit16:setTop(30);
    obj.edit16:setWidth(40);
    obj.edit16:setHeight(25);
    obj.edit16:setField("estrutura_frontal_total");
    obj.edit16:setName("edit16");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout6);
    obj.label7:setLeft(5);
    obj.label7:setTop(55);
    obj.label7:setWidth(80);
    obj.label7:setHeight(20);
    obj.label7:setText("Esquerda");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setName("label7");

    obj.edit17 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout6);
    obj.edit17:setLeft(85);
    obj.edit17:setTop(55);
    obj.edit17:setWidth(40);
    obj.edit17:setHeight(25);
    obj.edit17:setField("estrutura_esquerda_atual");
    obj.edit17:setName("edit17");

    obj.edit18 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout6);
    obj.edit18:setLeft(125);
    obj.edit18:setTop(55);
    obj.edit18:setWidth(40);
    obj.edit18:setHeight(25);
    obj.edit18:setField("estrutura_esquerda_total");
    obj.edit18:setName("edit18");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout6);
    obj.label8:setLeft(5);
    obj.label8:setTop(80);
    obj.label8:setWidth(80);
    obj.label8:setHeight(20);
    obj.label8:setText("Direita");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setName("label8");

    obj.edit19 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout6);
    obj.edit19:setLeft(85);
    obj.edit19:setTop(80);
    obj.edit19:setWidth(40);
    obj.edit19:setHeight(25);
    obj.edit19:setField("estrutura_direita_atual");
    obj.edit19:setName("edit19");

    obj.edit20 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout6);
    obj.edit20:setLeft(125);
    obj.edit20:setTop(80);
    obj.edit20:setWidth(40);
    obj.edit20:setHeight(25);
    obj.edit20:setField("estrutura_direita_total");
    obj.edit20:setName("edit20");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout6);
    obj.label9:setLeft(5);
    obj.label9:setTop(105);
    obj.label9:setWidth(80);
    obj.label9:setHeight(20);
    obj.label9:setText("Traseira");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setName("label9");

    obj.edit21 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout6);
    obj.edit21:setLeft(85);
    obj.edit21:setTop(105);
    obj.edit21:setWidth(40);
    obj.edit21:setHeight(25);
    obj.edit21:setField("estrutura_traseira_atual");
    obj.edit21:setName("edit21");

    obj.edit22 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout6);
    obj.edit22:setLeft(125);
    obj.edit22:setTop(105);
    obj.edit22:setWidth(40);
    obj.edit22:setHeight(25);
    obj.edit22:setField("estrutura_traseira_total");
    obj.edit22:setName("edit22");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout6);
    obj.label10:setLeft(5);
    obj.label10:setTop(130);
    obj.label10:setWidth(80);
    obj.label10:setHeight(20);
    obj.label10:setText("Interna");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setName("label10");

    obj.edit23 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout6);
    obj.edit23:setLeft(85);
    obj.edit23:setTop(130);
    obj.edit23:setWidth(40);
    obj.edit23:setHeight(25);
    obj.edit23:setField("estrutura_interna_atual");
    obj.edit23:setName("edit23");

    obj.edit24 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout6);
    obj.edit24:setLeft(125);
    obj.edit24:setTop(130);
    obj.edit24:setWidth(40);
    obj.edit24:setHeight(25);
    obj.edit24:setField("estrutura_interna_total");
    obj.edit24:setName("edit24");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(180);
    obj.layout7:setTop(70);
    obj.layout7:setWidth(760);
    obj.layout7:setHeight(305);
    obj.layout7:setName("layout7");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout7);
    obj.rectangle11:setAlign("client");
    obj.rectangle11:setColor("black");
    obj.rectangle11:setName("rectangle11");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout7);
    obj.label11:setText("ARMA");
    obj.label11:setLeft(5);
    obj.label11:setTop(1);
    obj.label11:setWidth(150);
    obj.label11:setHeight(20);
    obj.label11:setHorzTextAlign("center");
    obj.label11:setName("label11");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout7);
    obj.label12:setText("TIPO");
    obj.label12:setLeft(155);
    obj.label12:setTop(1);
    obj.label12:setWidth(50);
    obj.label12:setHeight(20);
    obj.label12:setHorzTextAlign("center");
    obj.label12:setName("label12");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout7);
    obj.label13:setText("PRECISÃO");
    obj.label13:setLeft(205);
    obj.label13:setTop(1);
    obj.label13:setWidth(50);
    obj.label13:setHeight(20);
    obj.label13:setHorzTextAlign("center");
    obj.label13:setFontSize(11);
    obj.label13:setName("label13");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout7);
    obj.label14:setText("OCULT.");
    obj.label14:setLeft(255);
    obj.label14:setTop(1);
    obj.label14:setWidth(50);
    obj.label14:setHeight(20);
    obj.label14:setHorzTextAlign("center");
    obj.label14:setFontSize(12);
    obj.label14:setName("label14");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout7);
    obj.label15:setText("DISP.");
    obj.label15:setLeft(305);
    obj.label15:setTop(1);
    obj.label15:setWidth(50);
    obj.label15:setHeight(20);
    obj.label15:setHorzTextAlign("center");
    obj.label15:setName("label15");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout7);
    obj.label16:setText("DANO");
    obj.label16:setLeft(355);
    obj.label16:setTop(1);
    obj.label16:setWidth(50);
    obj.label16:setHeight(20);
    obj.label16:setHorzTextAlign("center");
    obj.label16:setName("label16");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout7);
    obj.label17:setText("Nº DISP.");
    obj.label17:setLeft(405);
    obj.label17:setTop(1);
    obj.label17:setWidth(50);
    obj.label17:setHeight(20);
    obj.label17:setHorzTextAlign("center");
    obj.label17:setFontSize(11);
    obj.label17:setName("label17");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout7);
    obj.label18:setText("CD TIRO");
    obj.label18:setLeft(455);
    obj.label18:setTop(1);
    obj.label18:setWidth(50);
    obj.label18:setHeight(20);
    obj.label18:setHorzTextAlign("center");
    obj.label18:setFontSize(11);
    obj.label18:setName("label18");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout7);
    obj.label19:setText("CONF.");
    obj.label19:setLeft(505);
    obj.label19:setTop(1);
    obj.label19:setWidth(50);
    obj.label19:setHeight(20);
    obj.label19:setHorzTextAlign("center");
    obj.label19:setName("label19");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout7);
    obj.label20:setText("ALCANCE");
    obj.label20:setLeft(555);
    obj.label20:setTop(1);
    obj.label20:setWidth(50);
    obj.label20:setHeight(20);
    obj.label20:setHorzTextAlign("center");
    obj.label20:setFontSize(11);
    obj.label20:setName("label20");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout7);
    obj.label21:setText("PREÇO");
    obj.label21:setLeft(605);
    obj.label21:setTop(1);
    obj.label21:setWidth(50);
    obj.label21:setHeight(20);
    obj.label21:setHorzTextAlign("center");
    obj.label21:setName("label21");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout7);
    obj.label22:setText("POS.");
    obj.label22:setLeft(655);
    obj.label22:setTop(1);
    obj.label22:setWidth(50);
    obj.label22:setHeight(20);
    obj.label22:setHorzTextAlign("center");
    obj.label22:setName("label22");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout7);
    obj.button1:setText("+");
    obj.button1:setLeft(705);
    obj.button1:setTop(0);
    obj.button1:setWidth(25);
    obj.button1:setHeight(25);
    obj.button1:setName("button1");

    obj.rclVehicleWeapon = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclVehicleWeapon:setParent(obj.layout7);
    obj.rclVehicleWeapon:setName("rclVehicleWeapon");
    obj.rclVehicleWeapon:setField("vehicleWeaponList");
    obj.rclVehicleWeapon:setTemplateForm("frmVehicleWeapon");
    obj.rclVehicleWeapon:setLeft(5);
    obj.rclVehicleWeapon:setTop(25);
    obj.rclVehicleWeapon:setWidth(750);
    obj.rclVehicleWeapon:setHeight(270);
    obj.rclVehicleWeapon:setLayout("vertical");

    obj.rectangle12 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.scrollBox1);
    obj.rectangle12:setLeft(0);
    obj.rectangle12:setTop(385);
    obj.rectangle12:setWidth(250);
    obj.rectangle12:setHeight(250);
    obj.rectangle12:setColor("black");
    obj.rectangle12:setStrokeColor("white");
    obj.rectangle12:setStrokeSize(1);
    obj.rectangle12:setName("rectangle12");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.rectangle12);
    obj.label23:setLeft(0);
    obj.label23:setTop(40);
    obj.label23:setWidth(250);
    obj.label23:setHeight(20);
    obj.label23:setText("Veículo");
    obj.label23:setHorzTextAlign("center");
    obj.label23:setName("label23");

    obj.image4 = gui.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.rectangle12);
    obj.image4:setAlign("client");
    obj.image4:setField("vehicleAvatar");
    obj.image4:setEditable(true);
    obj.image4:setStyle("autoFit");
    obj.image4:setMargins({left=2, right=2, top=2, bottom=2});
    obj.image4:setName("image4");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (self)
            self.rclVehicleWeapon:append();
        end, obj);

    obj._e_event1 = obj.rclVehicleWeapon:addEventListener("onCompare",
        function (self, nodeA, nodeB)
            return utils.compareStringPtBr(nodeA.nome, nodeB.nome);
        end, obj);

    obj._e_event2 = obj.image4:addEventListener("onStartDrag",
        function (self, drag, x, y)
            drag:addData("imageURL", sheet.vehicleAvatar);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.radioButton1 ~= nil then self.radioButton1:destroy(); self.radioButton1 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.radioButton4 ~= nil then self.radioButton4:destroy(); self.radioButton4 = nil; end;
        if self.radioButton3 ~= nil then self.radioButton3:destroy(); self.radioButton3 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.radioButton2 ~= nil then self.radioButton2:destroy(); self.radioButton2 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.rclVehicleWeapon ~= nil then self.rclVehicleWeapon:destroy(); self.rclVehicleWeapon = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.radioButton5 ~= nil then self.radioButton5:destroy(); self.radioButton5 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmVehicles = {
    newEditor = newfrmVehicles, 
    new = newfrmVehicles, 
    name = "frmVehicles", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmVehicles = _frmVehicles;
rrpg.registrarForm(_frmVehicles);

return _frmVehicles;