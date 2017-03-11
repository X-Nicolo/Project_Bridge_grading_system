function varargout = test(varargin)
% TEST M-file for test.fig
%      TEST, by itself, creates a new TEST or raises the existing
%      singleton*.
%
%      H = TEST returns the handle to a new TEST or the handle to
%      the existing singleton*.
%
%      TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST.M with the given input arguments.
%
%      TEST('Property','Value',...) creates a new TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test

% Last Modified by GUIDE v2.5 05-Mar-2017 16:21:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_OpeningFcn, ...
                   'gui_OutputFcn',  @test_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before test is made visible.
function test_OpeningFcn(hObject, eventdata, handles, varargin)


set(handles.popupmenu1,'string',{'请选择';'上部结构';'下部结构';'桥面系'});

%edit4

% set(handles.edit4,'String','');

handles.output = hObject;

% Update handles structure

guidata(hObject, handles);







% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test (see VARARGIN)

% Choose default command line output for test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
switch get(handles.popupmenu1,'Value')
    case 1
         set(handles.popupmenu2,'string','请选择')
    case 2
        set(handles.popupmenu2,'string','请选择|上部承重|上部一般构件|支座')
    case 3
        set(handles.popupmenu2,'string','请选择|桥墩|桥台|基础|翼墙、耳墙|锥坡、护坡|河床|调治')
    case 4
        set(handles.popupmenu2,'string','请选择|桥面铺装|伸缩缝装置|人行道|栏杆、护栏|防排水系统|照明标志')
end
% switch get(handles.popupmenu1,'Value')
% %     case 1
% %         set(handles.popupmenu2,'string','请选择')
%     case 1
%         set(handles.popupmenu6,'string',{'1 蜂窝、麻面';'2 剥落、掉脚';'3 空洞、孔洞';'4 混凝土保护层厚度';'5 钢筋锈蚀';'6 混凝土碳化';'7 混凝土强度评定';'8 跨中扰度';'9 结构变位';'10 预应力构件损伤';'11 简支梁桥、刚加桥裂缝';'12 连续梁桥、连续刚桥、悬臂梁桥、T型刚构桥裂缝';});
%     case 2
%         set(handles.popupmenu6,'string','a|b|c')
%     case 3
%         set(handles.popupmenu6,'string','A|B|C')
% end
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
switch get(handles.popupmenu2,'Value')
    case 1
         set(handles.popupmenu3,'string','请选择')
    case 2
        set(handles.popupmenu3,'string','请选择|空')
%         set(handles.popupmenu6,'string',{'请选择';'1 蜂窝、麻面';'2 剥落、掉脚';'3 空洞、孔洞';'4 混凝土保护层厚度';'5 钢筋锈蚀';'6 混凝土碳化';'7 混凝土强度评定';'8 跨中扰度';'9 结构变位';'10 预应力构件损伤';'11 简支梁桥、刚加桥裂缝';'12 连续梁桥、连续刚桥、悬臂梁桥、T型刚构桥裂缝';});
        set(handles.zaihai1,'string','蜂窝、麻面');
        set(handles.zaihai2,'string','剥落、掉脚');
        set(handles.zaihai3,'string','空洞、孔洞');
        set(handles.zaihai4,'string','混凝土保护层厚度');
        set(handles.zaihai5,'string','钢筋锈蚀');
        set(handles.zaihai6,'string','混凝土碳化');
        set(handles.zaihai7,'string','混凝土强度评定');
        set(handles.zaihai8,'string','跨中扰度');
        set(handles.zaihai9,'string','结构变位');
        set(handles.zaihai10,'string','预应力构件损伤');
        set(handles.zaihai11,'string','简支梁桥、刚加桥裂缝');
        set(handles.zaihai12,'string','连续梁桥、连续刚桥、悬臂梁桥、T型刚构桥裂缝');
    case 3
        set(handles.popupmenu3,'string','请选择|空')
        set(handles.popupmenu6,'string',{'请选择';'1 蜂窝、麻面';'2 剥落、掉脚';'3 空洞、孔洞';'4 混凝土保护层厚度';'5 钢筋锈蚀';'6 混凝土碳化';'7 混凝土强度评定';'8 跨中扰度';'9 结构变位';'10 预应力构件损伤';'11 简支梁桥、刚加桥裂缝';'12 连续梁桥、连续刚桥、悬臂梁桥、T型刚构桥裂缝';});
    case 4
        set(handles.popupmenu3,'string','请选择|橡胶|钢支座|混凝土摆式支座')
end

% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
switch get(handles.popupmenu2,'Value')
    case 1
        set(handles.popupmenu3,'string','请选择')
    case 2
        set(handles.popupmenu3,'string','空')
    case 3
        set(handles.popupmenu3,'string','橡胶|钢支座|混凝土摆式支座')
        
end
switch get(handles.popupmenu3,'Value')
    case 1
        set(handles.popupmenu6,'string','请选择')
    %橡胶灾害
    case 2
        set(handles.popupmenu6,'string','板式支座老化变质、开裂|板式缺陷|板式支座位置串动、脱空或剪切超限|盆式支座组件损坏|聚四氟乙烯滑板磨损|盆式支座位移、转角超限')
    %钢支座灾害
    case 3
        set(handles.popupmenu6,'string','钢支座组件或功能缺陷|钢支座位移、转角超限|钢支座部件磨损、裂缝')
     %混凝土灾害
    case 4
        set(handles.popupmenu6,'string','混凝土缺损|活动支座滑动面不平整|混轴承有裂缝、切口或偏移')
        
        
end
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)

% global n;
% m = get(hanldes.edit2,'string'); 
% n = str2num(m);

% m = get(hanldes.edit2,'string'); 
% n = str2num(m);
% str =cell(n,1);
% for i=1:1:n
% %       str{i}=int2str(i);  
%         str{i}=i;  
% end
% set(handles.popupmenu4,'string','1|2|3');
% guidata(handles.popupmenu4,hanldes);

% n = str2double(get(handles.edit2,'String'));
% m = get(hanldes.edit2,'string'); 
% n = str2num(m);
% str=cell(n,1);
% for i=1:1:n
%       str{i}=int2str(i);  
%       set(handles.popupmenu4,'string',str);
%       guidata(handles.popupmenu4,hanldes);
% end


% set(handles.popupmenu4,'string',str);

% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)

% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)


% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object deletion, before destroying properties.
function popupmenu4_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over popupmenu4.
function popupmenu4_ButtonDownFcn(hObject, eventdata, handles)

% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on popupmenu4 and none of its controls.
function popupmenu4_KeyPressFcn(hObject, eventdata, handles)

% hObject    handle to popupmenu4 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)


n = str2double(get(handles.edit2,'String'));
str=cell(n,1);
for i=1:1:n
      str{i}=int2str(i);  
      set(handles.popupmenu4,'string',str);
end
%创建存储结果数组
resultnum= str2double(get(handles.edit2,'String'));
global p;
p=zeros(1,resultnum);
% m = get(hanldes.edit2,'string'); 
% n = str2num(m);
% str=cell(n,1);
% for i=1:1:n
%       str{i}=int2str(i);  
%       set(handles.popupmenu4,'string',str);
% end

% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% switch get(handles.popupmenu1,'Value')
% %     case 1
% %         set(handles.popupmenu3,'string','请选择')
%     case 1
%         set(handles.popupmenu6,'string',{'1 蜂窝、麻面';'2 剥落、掉脚';'3 空洞、孔洞';'4 混凝土保护层厚度';'5 钢筋锈蚀';'6 混凝土碳化';'7 混凝土强度评定';'8 跨中扰度';'9 结构变位';'10 预应力构件损伤';'11 简支梁桥、刚加桥裂缝';'12 连续梁桥、连续刚桥、悬臂梁桥、T型刚构桥裂缝';});
%     case 2
%         set(handles.popupmenu3,'string','空')
%     case 3
%         set(handles.popupmenu3,'string','橡胶|钢支座|混凝土摆式支座')
% end
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
%瞎玩
% n = str2double(get(handles.edit2,'String'));
% str=cell(1,n);
% for i=1:1:n
%       str{i}=int2str(i);  
%       set(handles.popupmenu4,'string',str);
% end

%灾害计算test1
% global koufenzhi1
switch str2double(get(handles.zaihaizhi1,'String'))
    case 1
        koufenzhi1=0;
    case 2
        koufenzhi1=20;
    case 3
        koufenzhi1=35;
    case 4
        koufenzhi1=0;
    case 5
        koufenzhi1=0;
end
switch str2double(get(handles.zaihaizhi2,'String'))
    case 1
        koufenzhi2=0;
    case 2
        koufenzhi2=25;
    case 3
        koufenzhi2=40;
    case 4
        koufenzhi2=50;
    case 5
        koufenzhi2=0;
end
switch str2double(get(handles.zaihaizhi3,'String'))
    case 1
        koufenzhi3=0;
    case 2
        koufenzhi3=25;
    case 3
        koufenzhi3=40;
    case 4
        koufenzhi3=50;
    case 5
        koufenzhi3=0;
end
switch str2double(get(handles.zaihaizhi4,'String'))
    case 1
        koufenzhi4=0;
    case 2
        koufenzhi4=25;
    case 3
        koufenzhi4=40;
    case 4
        koufenzhi4=50;
    case 5
        koufenzhi4=0;
end
switch str2double(get(handles.zaihaizhi5,'String'))
    case 1
        koufenzhi5=0;
    case 2
        koufenzhi5=35;
    case 3
        koufenzhi5=45;
    case 4
        koufenzhi5=60;
    case 5
        koufenzhi5=100;
end
switch str2double(get(handles.zaihaizhi6,'String'))
    case 1
        koufenzhi6=0;
    case 2
        koufenzhi6=25;
    case 3
        koufenzhi6=40;
    case 4
        koufenzhi6=50;
    case 5
        koufenzhi6=0;
end
switch str2double(get(handles.zaihaizhi7,'String'))
    case 1
        koufenzhi7=0;
    case 2
        koufenzhi7=35;
    case 3
        koufenzhi7=45;
    case 4
        koufenzhi7=60;
    case 5
        koufenzhi7=100;
end
switch str2double(get(handles.zaihaizhi8,'String'))
    case 1
        koufenzhi8=0;
    case 2
        koufenzhi8=35;
    case 3
        koufenzhi8=45;
    case 4
        koufenzhi8=60;
    case 5
        koufenzhi8=100;
end
switch str2double(get(handles.zaihaizhi9,'String'))
    case 1
        koufenzhi9=0;
    case 2
        koufenzhi9=35;
    case 3
        koufenzhi9=45;
    case 4
        koufenzhi9=60;
    case 5
        koufenzhi9=100;
end
switch str2double(get(handles.zaihaizhi10,'String'))
    case 1
        koufenzhi10=0;
    case 2
        koufenzhi10=35;
    case 3
        koufenzhi10=45;
    case 4
        koufenzhi10=60;
    case 5
        koufenzhi10=100;
end
switch str2double(get(handles.zaihaizhi11,'String'))
    case 1
        koufenzhi11=0;
    case 2
        koufenzhi11=35;
    case 3
        koufenzhi11=45;
    case 4
        koufenzhi11=60;
    case 5
        koufenzhi11=100;
end
switch str2double(get(handles.zaihaizhi12,'String'))
    case 1
        koufenzhi12=0;
    case 2
        koufenzhi12=35;
    case 3
        koufenzhi12=45;
    case 4
        koufenzhi12=60;
    case 5
        koufenzhi12=100;
end
%上部承重构件 将12种灾害放进一个数组里
a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
%对数组进行降序排序
b=sort(a,'descend');
%取排序后数组最大值
u1=b(1);

%组建新数组
u=zeros(1,12);
%作为新数组的第一项
u(1)=u1;
% 生成其他数组元素
for i=2:12
    u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
end  
%一个构件的得分值
PMCI=100-sum(u(:));
%判断PMCI
if PMCI<=0
    PMCI=0;
end
% set(handles.pingfen,'string',PMCI)    
%创建数组保存所有构件分数
% n = str2double(get(handles.edit2,'String'));
global p;
% p=zeros(1,n);
%将得分值存进数组
% i=str2double(get(handles.popupmenu4,'value'));
i=get(handles.popupmenu4,'value');
p(i)=PMCI;

% %结果
% psort=sort(p);
% pmin=psort(1);
% t=1000000;
% PCCI=sum(p(:))/n-(100-pmin)/t;
% set(handles.pingfen,'string',PCCI)    

% n = str2double(get(handles.edit2,'String'));
% str=cell(1,n);
% for i=1:1:n
%       str{i}=int2str(i);  
%       set(handles.popupmenu4,'string',str);
% end
        



%待修改
% str=cell(n,1);
% for i=1:1:n
%       str{i}=int2str(i);  
%       set(handles.popupmenu4,'string',str);
% end


%可用
% t=get(handles.popupmenu1,'value');
% set(handles.edit1,'string',t)


    



% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function pingfen_Callback(hObject, eventdata, handles)
% hObject    handle to pingfen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pingfen as text
%        C(get(hObject,'String')) returns contents of pingfen as a double


% --- Executes during object creation, after setting all properties.
function pingfen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pingfen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function pushbutton3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function zaihai1_Callback(hObject, eventdata, handles)
% hObject    handle to zaihai1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihai1 as text
%        str2double(get(hObject,'String')) returns contents of zaihai1 as a double


% --- Executes during object creation, after setting all properties.
function zaihai1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihai1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihai2_Callback(hObject, eventdata, handles)
% hObject    handle to zaihai2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihai2 as text
%        str2double(get(hObject,'String')) returns contents of zaihai2 as a double


% --- Executes during object creation, after setting all properties.
function zaihai2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihai2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihai3_Callback(hObject, eventdata, handles)
% hObject    handle to zaihai3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihai3 as text
%        str2double(get(hObject,'String')) returns contents of zaihai3 as a double


% --- Executes during object creation, after setting all properties.
function zaihai3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihai3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihai4_Callback(hObject, eventdata, handles)
% hObject    handle to zaihai4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihai4 as text
%        str2double(get(hObject,'String')) returns contents of zaihai4 as a double


% --- Executes during object creation, after setting all properties.
function zaihai4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihai4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihai5_Callback(hObject, eventdata, handles)
% hObject    handle to zaihai5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihai5 as text
%        str2double(get(hObject,'String')) returns contents of zaihai5 as a double


% --- Executes during object creation, after setting all properties.
function zaihai5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihai5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihai6_Callback(hObject, eventdata, handles)
% hObject    handle to zaihai6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihai6 as text
%        str2double(get(hObject,'String')) returns contents of zaihai6 as a double


% --- Executes during object creation, after setting all properties.
function zaihai6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihai6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihai7_Callback(hObject, eventdata, handles)
% hObject    handle to zaihai7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihai7 as text
%        str2double(get(hObject,'String')) returns contents of zaihai7 as a double


% --- Executes during object creation, after setting all properties.
function zaihai7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihai7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihai8_Callback(hObject, eventdata, handles)
% hObject    handle to zaihai8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihai8 as text
%        str2double(get(hObject,'String')) returns contents of zaihai8 as a double


% --- Executes during object creation, after setting all properties.
function zaihai8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihai8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihai9_Callback(hObject, eventdata, handles)
% hObject    handle to zaihai9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihai9 as text
%        str2double(get(hObject,'String')) returns contents of zaihai9 as a double


% --- Executes during object creation, after setting all properties.
function zaihai9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihai9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihai10_Callback(hObject, eventdata, handles)
% hObject    handle to zaihai10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihai10 as text
%        str2double(get(hObject,'String')) returns contents of zaihai10 as a double


% --- Executes during object creation, after setting all properties.
function zaihai10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihai10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihai11_Callback(hObject, eventdata, handles)
% hObject    handle to zaihai11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihai11 as text
%        str2double(get(hObject,'String')) returns contents of zaihai11 as a double


% --- Executes during object creation, after setting all properties.
function zaihai11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihai11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihai12_Callback(hObject, eventdata, handles)
% hObject    handle to zaihai12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihai12 as text
%        str2double(get(hObject,'String')) returns contents of zaihai12 as a double


% --- Executes during object creation, after setting all properties.
function zaihai12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihai12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihaizhi1_Callback(hObject, eventdata, handles)
% hObject    handle to zaihaizhi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihaizhi1 as text
%        str2double(get(hObject,'String')) returns contents of zaihaizhi1 as a double


% --- Executes during object creation, after setting all properties.
function zaihaizhi1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihaizhi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihaizhi2_Callback(hObject, eventdata, handles)
% hObject    handle to zaihaizhi2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihaizhi2 as text
%        str2double(get(hObject,'String')) returns contents of zaihaizhi2 as a double


% --- Executes during object creation, after setting all properties.
function zaihaizhi2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihaizhi2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihaizhi3_Callback(hObject, eventdata, handles)
% hObject    handle to zaihaizhi3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihaizhi3 as text
%        str2double(get(hObject,'String')) returns contents of zaihaizhi3 as a double


% --- Executes during object creation, after setting all properties.
function zaihaizhi3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihaizhi3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihaizhi4_Callback(hObject, eventdata, handles)
% hObject    handle to zaihaizhi4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihaizhi4 as text
%        str2double(get(hObject,'String')) returns contents of zaihaizhi4 as a double


% --- Executes during object creation, after setting all properties.
function zaihaizhi4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihaizhi4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihaizhi5_Callback(hObject, eventdata, handles)
% hObject    handle to zaihaizhi5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihaizhi5 as text
%        str2double(get(hObject,'String')) returns contents of zaihaizhi5 as a double


% --- Executes during object creation, after setting all properties.
function zaihaizhi5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihaizhi5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihaizhi6_Callback(hObject, eventdata, handles)
% hObject    handle to zaihaizhi6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihaizhi6 as text
%        str2double(get(hObject,'String')) returns contents of zaihaizhi6 as a double


% --- Executes during object creation, after setting all properties.
function zaihaizhi6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihaizhi6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihaizhi7_Callback(hObject, eventdata, handles)
% hObject    handle to zaihaizhi7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihaizhi7 as text
%        str2double(get(hObject,'String')) returns contents of zaihaizhi7 as a double


% --- Executes during object creation, after setting all properties.
function zaihaizhi7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihaizhi7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihaizhi8_Callback(hObject, eventdata, handles)
% hObject    handle to zaihaizhi8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihaizhi8 as text
%        str2double(get(hObject,'String')) returns contents of zaihaizhi8 as a double


% --- Executes during object creation, after setting all properties.
function zaihaizhi8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihaizhi8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihaizhi9_Callback(hObject, eventdata, handles)
% hObject    handle to zaihaizhi9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihaizhi9 as text
%        str2double(get(hObject,'String')) returns contents of zaihaizhi9 as a double


% --- Executes during object creation, after setting all properties.
function zaihaizhi9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihaizhi9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihaizhi10_Callback(hObject, eventdata, handles)
% hObject    handle to zaihaizhi10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihaizhi10 as text
%        str2double(get(hObject,'String')) returns contents of zaihaizhi10 as a double


% --- Executes during object creation, after setting all properties.
function zaihaizhi10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihaizhi10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihaizhi11_Callback(hObject, eventdata, handles)
% hObject    handle to zaihaizhi11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihaizhi11 as text
%        str2double(get(hObject,'String')) returns contents of zaihaizhi11 as a double


% --- Executes during object creation, after setting all properties.
function zaihaizhi11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihaizhi11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zaihaizhi12_Callback(hObject, eventdata, handles)
% hObject    handle to zaihaizhi12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zaihaizhi12 as text
%        str2double(get(hObject,'String')) returns contents of zaihaizhi12 as a double


% --- Executes during object creation, after setting all properties.
function zaihaizhi12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zaihaizhi12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
n= str2double(get(handles.edit2,'String'));
global p;
%结果
psort=sort(p);
pmin=psort(1);
t=10000000;
PCCI=sum(p(:))/n-(100-pmin)/t;
set(handles.pingfen,'string',PCCI)    
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
