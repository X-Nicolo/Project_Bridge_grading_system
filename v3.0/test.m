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

% Last Modified by GUIDE v2.5 09-Mar-2017 21:07:26

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


set(handles.popupmenu1,'string',{'��ѡ��';'�ϲ��ṹ';'�²��ṹ';'����ϵ'});

handles.output = hObject;
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
         set(handles.popupmenu2,'string','��ѡ��')
    case 2
        set(handles.popupmenu2,'string','��ѡ��|�ϲ�����|�ϲ�һ�㹹��|֧��')
    case 3
        set(handles.popupmenu2,'string','��ѡ��|�Ŷ�|��̨|����|��ǽ����ǽ|׶�¡�����|�Ӵ�|����')
    case 4
        set(handles.popupmenu2,'string','��ѡ��|������װ|������װ��|���е�|���ˡ�����|����ˮϵͳ|������־')
end
% switch get(handles.popupmenu1,'Value')
% %     case 1
% %         set(handles.popupmenu2,'string','��ѡ��')
%     case 1
%         set(handles.popupmenu6,'string',{'1 ���ѡ�����';'2 ���䡢����';'3 �ն����׶�';'4 ��������������';'5 �ֽ���ʴ';'6 ������̼��';'7 ������ǿ������';'8 �����Ŷ�';'9 �ṹ��λ';'10 ԤӦ����������';'11 ��֧���š��ռ����ѷ�';'12 �������š��������š��������š�T�͸չ����ѷ�';});
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
%�󲿼�
switch get(handles.popupmenu1,'Value')
    case 1
    case 2%�ϲ��ṹ
            switch get(handles.popupmenu2,'Value')
                case 1
                     set(handles.popupmenu3,'string','��ѡ��')
                case 2
                    set(handles.popupmenu3,'string','��ѡ��|��')
                       %�����Ƕ�С����������
                    set(handles.zaihai1,'string','���ѡ�����');
                    set(handles.zaihai2,'string','���䡢����');
                    set(handles.zaihai3,'string','�ն����׶�');
                    set(handles.zaihai4,'string','��������������');
                    set(handles.zaihai5,'string','�ֽ���ʴ');
                    set(handles.zaihai6,'string','������̼��');
                    set(handles.zaihai7,'string','������ǿ������');
                    set(handles.zaihai8,'string','�����Ŷ�');
                    set(handles.zaihai9,'string','�ṹ��λ');
                    set(handles.zaihai10,'string','ԤӦ����������');
                    set(handles.zaihai11,'string','��֧���š��ռ����ѷ�');
                    set(handles.zaihai12,'string','�������š��������š��������š�T�͸չ����ѷ�');
                case 3
                    set(handles.popupmenu3,'string','��ѡ��|��')
                        %�����Ƕ�С����������
                    set(handles.zaihai1,'string','���ѡ�����');
                    set(handles.zaihai2,'string','���䡢����');
                    set(handles.zaihai3,'string','�ն����׶�');
                    set(handles.zaihai4,'string','��������������');
                    set(handles.zaihai5,'string','�ֽ���ʴ');
                    set(handles.zaihai6,'string','������̼��');
                    set(handles.zaihai7,'string','������ǿ������');
                    set(handles.zaihai8,'string','�����Ŷ�');
                    set(handles.zaihai9,'string','�ṹ��λ');
                    set(handles.zaihai10,'string','ԤӦ����������');
                    set(handles.zaihai11,'string','��֧���š��ռ����ѷ�');
                    set(handles.zaihai12,'string','�������š��������š��������š�T�͸չ����ѷ�');
                case 4
                    set(handles.popupmenu3,'string','��ѡ��|��|��֧��|��������ʽ֧��')
                        %�����Ƕ�С����������
            end
    case 3%�²��ṹ
        switch get(handles.popupmenu2,'Value')
                case 1
                     set(handles.popupmenu3,'string','��ѡ��')
                case 2
                    set(handles.popupmenu3,'string','��ѡ��|����|�����ϵ��')
                       %�����Ƕ�С����������
                case 3
                    set(handles.popupmenu3,'string','��ѡ��|̨��|̨ñ')
                case 4
                    set(handles.popupmenu3,'string','��ѡ��|��')
                        %�����Ƕ�С����������
                    set(handles.zaihai1,'string','��ˢ���Ϳ�');
                    set(handles.zaihai2,'string','���䡢¶��');
                    set(handles.zaihai3,'string','��ʴ');
                    set(handles.zaihai4,'string','�ӵ�������');
                    set(handles.zaihai5,'string','����');
                    set(handles.zaihai6,'string','���ƺ���б');
                    set(handles.zaihai7,'string','�ѷ�');
                    set(handles.zaihai8,'string','��');
                    set(handles.zaihai9,'string','��');
                    set(handles.zaihai10,'string','��');
                    set(handles.zaihai11,'string','��');
                    set(handles.zaihai12,'string','��');
            case 5
                    set(handles.popupmenu3,'string','��ѡ��|��')
                        %�����Ƕ�С����������
                    set(handles.zaihai1,'string','����');
                    set(handles.zaihai2,'string','λ��');
                    set(handles.zaihai3,'string','��ʴ');
                    set(handles.zaihai4,'string','�Ķǡ������ɶ�');
                    set(handles.zaihai5,'string','�ѷ�');
                    set(handles.zaihai6,'string','��');
                    set(handles.zaihai7,'string','��');
                    set(handles.zaihai8,'string','��');
                    set(handles.zaihai9,'string','��');
                    set(handles.zaihai10,'string','��');
                    set(handles.zaihai11,'string','��');
                    set(handles.zaihai12,'string','��');
            case 6
                    set(handles.popupmenu3,'string','��ѡ��|��')
                        %�����Ƕ�С����������
                    set(handles.zaihai1,'string','ȱ��');
                    set(handles.zaihai2,'string','��ˢ');
                    set(handles.zaihai3,'string','��');
                    set(handles.zaihai4,'string','��');
                    set(handles.zaihai5,'string','��');
                    set(handles.zaihai6,'string','��');
                    set(handles.zaihai7,'string','��');
                    set(handles.zaihai8,'string','��');
                    set(handles.zaihai9,'string','��');
                    set(handles.zaihai10,'string','��');
                    set(handles.zaihai11,'string','��');
                    set(handles.zaihai12,'string','��');
            case 7
                   set(handles.popupmenu3,'string','��ѡ��|��')
                        %�����Ƕ�С����������
                    set(handles.zaihai1,'string','����');
                    set(handles.zaihai2,'string','��ˢ');
                    set(handles.zaihai3,'string','�Ӵ���Ǩ');
                    set(handles.zaihai4,'string','��');
                    set(handles.zaihai5,'string','��');
                    set(handles.zaihai6,'string','��');
                    set(handles.zaihai7,'string','��');
                    set(handles.zaihai8,'string','��');
                    set(handles.zaihai9,'string','��');
                    set(handles.zaihai10,'string','��');
                    set(handles.zaihai11,'string','��');
                    set(handles.zaihai12,'string','��');
            case 8
                
                    set(handles.popupmenu3,'string','��ѡ��|��')
                        %�����Ƕ�С����������
                    set(handles.zaihai1,'string','��');
                    set(handles.zaihai2,'string','��ˢ������');
                    set(handles.zaihai3,'string','��');
                    set(handles.zaihai4,'string','��');
                    set(handles.zaihai5,'string','��');
                    set(handles.zaihai6,'string','��');
                    set(handles.zaihai7,'string','��');
                    set(handles.zaihai8,'string','��');
                    set(handles.zaihai9,'string','��');
                    set(handles.zaihai10,'string','��');
                    set(handles.zaihai11,'string','��');
                    set(handles.zaihai12,'string','��');
                    
                    
%                     set(handles.popupmenu3,'string','��ѡ��|��|��֧��|��������ʽ֧��')
                        %�����Ƕ�С����������
        end
    case 4%����ϵ
          switch get(handles.popupmenu2,'Value')
                case 1
                     set(handles.popupmenu3,'string','��ѡ��')
                case 2%������װ
                    set(handles.popupmenu3,'string','��ѡ��|���������|ˮ�������')
                       %�����Ƕ�С����������
                case 3%������
                    set(handles.popupmenu3,'string','��ѡ��|��')
                        %�����Ƕ�С����������
                    set(handles.zaihai1,'string','��͹��ƽ');
                    set(handles.zaihai2,'string','ê����ȱ��');
                    set(handles.zaihai3,'string','����');
                    set(handles.zaihai4,'string','ʧЧ');
                    set(handles.zaihai5,'string','��');
                    set(handles.zaihai6,'string','��');
                    set(handles.zaihai7,'string','��');
                    set(handles.zaihai8,'string','��');
                    set(handles.zaihai9,'string','��');
                    set(handles.zaihai10,'string','��');
                    set(handles.zaihai11,'string','��');
                    set(handles.zaihai12,'string','��');
                case 4%���е�
                    set(handles.popupmenu3,'string','��ѡ��|��')
                        %�����Ƕ�С����������
                    set(handles.zaihai1,'string','����');
                    set(handles.zaihai2,'string','ȱʧ');
                    set(handles.zaihai3,'string','��');
                    set(handles.zaihai4,'string','��');
                    set(handles.zaihai5,'string','��');
                    set(handles.zaihai6,'string','��');
                    set(handles.zaihai7,'string','��');
                    set(handles.zaihai8,'string','��');
                    set(handles.zaihai9,'string','��');
                    set(handles.zaihai10,'string','��');
                    set(handles.zaihai11,'string','��');
                    set(handles.zaihai12,'string','��');
              case 5%���ˡ�����
                    set(handles.popupmenu3,'string','��ѡ��|��')
                        %�����Ƕ�С����������
                    set(handles.zaihai1,'string','ײ����ȱʧ');
                    set(handles.zaihai2,'string','����');
                    set(handles.zaihai3,'string','��');
                    set(handles.zaihai4,'string','��');
                    set(handles.zaihai5,'string','��');
                    set(handles.zaihai6,'string','��');
                    set(handles.zaihai7,'string','��');
                    set(handles.zaihai8,'string','��');
                    set(handles.zaihai9,'string','��');
                    set(handles.zaihai10,'string','��');
                    set(handles.zaihai11,'string','��');
                    set(handles.zaihai12,'string','��');
              case 6%����ˮϵͳ
                    set(handles.popupmenu3,'string','��ѡ��|��')
                        %�����Ƕ�С����������
                    set(handles.zaihai1,'string','��ˮ����ͨ');
                    set(handles.zaihai2,'string','йˮ�ܡ���ˮ��ȱ��');
                    set(handles.zaihai3,'string','��');
                    set(handles.zaihai4,'string','��');
                    set(handles.zaihai5,'string','��');
                    set(handles.zaihai6,'string','��');
                    set(handles.zaihai7,'string','��');
                    set(handles.zaihai8,'string','��');
                    set(handles.zaihai9,'string','��');
                    set(handles.zaihai10,'string','��');
                    set(handles.zaihai11,'string','��');
                    set(handles.zaihai12,'string','��');
              case 7%��������־
                    set(handles.popupmenu3,'string','��ѡ��|��')
                        %�����Ƕ�С����������
                    set(handles.zaihai1,'string','�������');
                    set(handles.zaihai2,'string','������ʩȱʧ');
                    set(handles.zaihai3,'string','��־���䡢ȱʧ');
                    set(handles.zaihai4,'string','��');
                    set(handles.zaihai5,'string','��');
                    set(handles.zaihai6,'string','��');
                    set(handles.zaihai7,'string','��');
                    set(handles.zaihai8,'string','��');
                    set(handles.zaihai9,'string','��');
                    set(handles.zaihai10,'string','��');
                    set(handles.zaihai11,'string','��');
                    set(handles.zaihai12,'string','��');
                  
                  
                        
            end
        
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
%С����
%����֧������ֺ�
switch get(handles.popupmenu1,'Value')
    case 1
    case 2%�ϲ��ṹ
        switch get(handles.popupmenu2,'Value')
            case 1
            case 2
            case 3 
            case 4 %֧��
                switch get(handles.popupmenu3,'Value')
                    case 1
                    case 2
                        set(handles.zaihai1,'string','��ʽ֧���ϻ����ʡ�����');
                        set(handles.zaihai2,'string','��ʽ֧��ȱ��');
                        set(handles.zaihai3,'string','��ʽ֧��λ�ô������ѿջ���г���');
                        set(handles.zaihai4,'string','��ʽ֧�������');
                        set(handles.zaihai5,'string','���ķ���ϩ����ĥ��');
                        set(handles.zaihai6,'string','��ʽ֧��λ�ơ�ת�ǳ���');
                        set(handles.zaihai7,'string','�� ');
                        set(handles.zaihai8,'string','��');
                        set(handles.zaihai9,'string','��');
                        set(handles.zaihai10,'string','��');
                        set(handles.zaihai11,'string','��');
                        set(handles.zaihai12,'string','��');
                     case 3
                        set(handles.zaihai1,'string','��֧���������ȱ��');
                        set(handles.zaihai2,'string','��֧��λ�ơ�ת�ǳ���');
                        set(handles.zaihai3,'string','��֧������ĥ���ѷ�');
                        set(handles.zaihai4,'string','��');
                        set(handles.zaihai5,'string','��');
                        set(handles.zaihai6,'string','��');
                        set(handles.zaihai7,'string','��');
                        set(handles.zaihai8,'string','��');
                        set(handles.zaihai9,'string','��');
                        set(handles.zaihai10,'string','��');
                        set(handles.zaihai11,'string','��');
                        set(handles.zaihai12,'string','��');
                    case 4
                        set(handles.zaihai1,'string','������ȱ��');
                        set(handles.zaihai2,'string','�֧�������治��������ҧ��');
                        set(handles.zaihai3,'string','��������ơ��пڻ�ƫ��');
                        set(handles.zaihai4,'string','��');
                        set(handles.zaihai5,'string','��');
                        set(handles.zaihai6,'string','��');
                        set(handles.zaihai7,'string','��');
                        set(handles.zaihai8,'string','��');
                        set(handles.zaihai9,'string','��');
                        set(handles.zaihai10,'string','��');
                        set(handles.zaihai11,'string','��');
                        set(handles.zaihai12,'string','��');
                end
        end
    case 3%�²��ṹ
        switch get(handles.popupmenu2,'Value') 
            case 1
            case 2 %�Ŷ�
                switch get(handles.popupmenu3,'Value')
                    case 1
                    case 2%����
                        set(handles.zaihai1,'string','���ѡ�����');
                        set(handles.zaihai2,'string','���䡢¶��');
                        set(handles.zaihai3,'string','�ն����׶�');
                        set(handles.zaihai4,'string','�ֽʴ');
                        set(handles.zaihai5,'string','������̼������ʴ');
                        set(handles.zaihai6,'string','ĥ��');
                        set(handles.zaihai7,'string','��������ȱ�� ');
                        set(handles.zaihai8,'string','λ��');
                        set(handles.zaihai9,'string','�ѷ�');
                        set(handles.zaihai10,'string','��');
                        set(handles.zaihai11,'string','��');
                        set(handles.zaihai12,'string','��');
                     case 3%�����ϵ��
                        set(handles.zaihai1,'string','���ѡ�����');
                        set(handles.zaihai2,'string','���䡢¶��');
                        set(handles.zaihai3,'string','�ն����׶�');
                        set(handles.zaihai4,'string','�ֽ���ʴ');
                        set(handles.zaihai5,'string','������̼������ʴ');
                        set(handles.zaihai6,'string','�ѷ�');
                        set(handles.zaihai7,'string','��');
                        set(handles.zaihai8,'string','��');
                        set(handles.zaihai9,'string','��');
                        set(handles.zaihai10,'string','��');
                        set(handles.zaihai11,'string','��');
                        set(handles.zaihai12,'string','��');
                end
            case 3%��̨
                switch get(handles.popupmenu3,'Value')
                    case 1
                    case 2%̨��
                        set(handles.zaihai1,'string','����');
                        set(handles.zaihai2,'string','�ն����׶�');
                        set(handles.zaihai3,'string','ĥ��');
                        set(handles.zaihai4,'string','������̼������ʴ');
                        set(handles.zaihai5,'string','��������ȱ��');
                        set(handles.zaihai6,'string','��ͷ����');
                        set(handles.zaihai7,'string','̫����ˮ״�� ');
                        set(handles.zaihai8,'string','λ��');
                        set(handles.zaihai9,'string','�ѷ�');
                        set(handles.zaihai10,'string','��');
                        set(handles.zaihai11,'string','��');
                        set(handles.zaihai12,'string','��');
                     case 3%̨ñ
                        set(handles.zaihai1,'string','����');
                        set(handles.zaihai2,'string','������̼������ʴ');
                        set(handles.zaihai3,'string','�ѷ�');
                        set(handles.zaihai4,'string','�ն����׶�');
                        set(handles.zaihai5,'string','��');
                        set(handles.zaihai6,'string','��');
                        set(handles.zaihai7,'string','��');
                        set(handles.zaihai8,'string','��');
                        set(handles.zaihai9,'string','��');
                        set(handles.zaihai10,'string','��');
                        set(handles.zaihai11,'string','��');
                        set(handles.zaihai12,'string','��');
                end
            
        end
    case 4%����ϵ
        switch get(handles.popupmenu2,'Value') 
            case 1
            case 2 %������װ
                switch get(handles.popupmenu3,'Value')
                    case 1
                    case 2%���������
                        set(handles.zaihai1,'string','����');
                        set(handles.zaihai2,'string','����');
                        set(handles.zaihai3,'string','����');
                        set(handles.zaihai4,'string','�ѷ죨���ѡ����ѡ������ѷ졢�����ѷ�ȣ�');
                        set(handles.zaihai5,'string','��');
                        set(handles.zaihai6,'string','��');
                        set(handles.zaihai7,'string','��');
                        set(handles.zaihai8,'string','��');
                        set(handles.zaihai9,'string','��');
                        set(handles.zaihai10,'string','��');
                        set(handles.zaihai11,'string','��');
                        set(handles.zaihai12,'string','��');
                     case 3%ˮ�������
                        set(handles.zaihai1,'string','ĥ�⡢��Ƥ��¶��');
                        set(handles.zaihai2,'string','��̨');
                        set(handles.zaihai3,'string','�Ӷ�');
                        set(handles.zaihai4,'string','����');
                        set(handles.zaihai5,'string','����');
                        set(handles.zaihai6,'string','�ӷ�����');
                        set(handles.zaihai7,'string','�ѷ죨��Ƕ��ѡ�����壩');
                        set(handles.zaihai8,'string','��');
                        set(handles.zaihai9,'string','��');
                        set(handles.zaihai10,'string','��');
                        set(handles.zaihai11,'string','��');
                        set(handles.zaihai12,'string','��');
                end
        end
        
        
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
%�����洢�������
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
% %         set(handles.popupmenu3,'string','��ѡ��')
%     case 1
%         set(handles.popupmenu6,'string',{'1 ���ѡ�����';'2 ���䡢����';'3 �ն����׶�';'4 ��������������';'5 �ֽ���ʴ';'6 ������̼��';'7 ������ǿ������';'8 �����Ŷ�';'9 �ṹ��λ';'10 ԤӦ����������';'11 ��֧���š��ռ����ѷ�';'12 �������š��������š��������š�T�͸չ����ѷ�';});
%     case 2
%         set(handles.popupmenu3,'string','��')
%     case 3
%         set(handles.popupmenu3,'string','��|��֧��|��������ʽ֧��')
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
%�ֺ�����
% global koufenzhi1

%�ϲ��ṹ
switch get(handles.popupmenu1,'Value')
    case 1
    case 2%�ϲ��ṹ
            switch get(handles.popupmenu2,'Value')
                case 1
                case 2%�ϲ�����
                    %�ֺ���Ӧ�Ŀ۷�ֵ
                    %ԭ�������
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
                    
                    
                    
                    %�ϲ����ع��� ��12���ֺ��Ž�һ��������
                    a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                    %��������н�������
                    b=sort(a,'descend');
                    %ȡ������������ֵ
                    u1=b(1);

                    %�齨������
                    u=zeros(1,12);
                    %��Ϊ������ĵ�һ��
                    u(1)=u1;
                    % ������������Ԫ��
                    for i=2:12
                        u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                    end  
                    %һ�������ĵ÷�ֵ
                    PMCI=100-sum(u(:));
                    %�ж�PMCI
                    if PMCI<=0
                        PMCI=0;
                    end
                    % set(handles.pingfen,'string',PMCI)    
                    %�������鱣�����й�������
                    % n = str2double(get(handles.edit2,'String'));
                    global p;
                    % p=zeros(1,n);
                    %���÷�ֵ�������
                    i=get(handles.popupmenu4,'value');
                    p(i)=PMCI;




                case 3%�ϲ�һ��ṹ
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
                    
                    
                    
                    %�ϲ�һ�㹹�� ��12���ֺ��Ž�һ��������
                    a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                    %��������н�������
                    b=sort(a,'descend');
                    %ȡ������������ֵ
                    u1=b(1);

                    %�齨������
                    u=zeros(1,12);
                    %��Ϊ������ĵ�һ��
                    u(1)=u1;
                    % ������������Ԫ��
                    for i=2:12
                        u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                    end  
                    %һ�������ĵ÷�ֵ
                    PMCI=100-sum(u(:));
                    %�ж�PMCI
                    if PMCI<=0
                        PMCI=0;
                    end
                    % set(handles.pingfen,'string',PMCI)    
                    %�������鱣�����й�������
                    % n = str2double(get(handles.edit2,'String'));
                    global p;
                    % p=zeros(1,n);
                    %���÷�ֵ�������
                    i=get(handles.popupmenu4,'value');
                    p(i)=PMCI;
                    
                    
                case 4%֧��
                    switch get(handles.popupmenu3,'Value')
                        case 1
                        case 2%��
                            switch str2double(get(handles.zaihaizhi1,'String'))
                                case 1
                                    koufenzhi1=0;
                                case 2
                                    koufenzhi1=35;
                                case 3
                                    koufenzhi1=45;
                                case 4
                                    koufenzhi1=60;
                                case 5
                                    koufenzhi1=100;
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
                                    koufenzhi3=35;
                                case 3
                                    koufenzhi3=45;
                                case 4
                                    koufenzhi3=60;
                                case 5
                                    koufenzhi3=100;
                            end
                            switch str2double(get(handles.zaihaizhi4,'String'))
                                case 1
                                    koufenzhi4=0;
                                case 2
                                    koufenzhi4=35;
                                case 3
                                    koufenzhi4=45;
                                case 4
                                    koufenzhi4=60;
                                case 5
                                    koufenzhi4=100;
                            end
                            switch str2double(get(handles.zaihaizhi5,'String'))
                                case 1
                                    koufenzhi5=0;
                                case 2
                                    koufenzhi5=25;
                                case 3
                                    koufenzhi5=40;
                                case 4
                                    koufenzhi5=50;
                                case 5
                                    koufenzhi5=0;
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
                            %��end
                            switch str2double(get(handles.zaihaizhi7,'String'))%��
                                case 1
                                    koufenzhi7=0;
                                case 2
                                    koufenzhi7=0;
                                case 3
                                    koufenzhi7=0;
                                case 4
                                    koufenzhi7=0;
                                case 5
                                    koufenzhi7=0;
                            end
                            switch str2double(get(handles.zaihaizhi8,'String'))
                                case 1
                                    koufenzhi8=0;
                                case 2
                                    koufenzhi8=0;
                                case 3
                                    koufenzhi8=0;
                                case 4
                                    koufenzhi8=0;
                                case 5
                                    koufenzhi8=0;
                            end
                            switch str2double(get(handles.zaihaizhi9,'String'))
                                case 1
                                    koufenzhi9=0;
                                case 2
                                    koufenzhi9=0;
                                case 3
                                    koufenzhi9=0;
                                case 4
                                    koufenzhi9=0;
                                case 5
                                    koufenzhi9=0;
                            end
                            switch str2double(get(handles.zaihaizhi10,'String'))
                                case 1
                                    koufenzhi10=0;
                                case 2
                                    koufenzhi10=0;
                                case 3
                                    koufenzhi10=00;
                                case 4
                                    koufenzhi10=0;
                                case 5
                                    koufenzhi10=0;
                            end
                            switch str2double(get(handles.zaihaizhi11,'String'))
                                case 1
                                    koufenzhi11=0;
                                case 2
                                    koufenzhi11=0;
                                case 3
                                    koufenzhi11=0;
                                case 4
                                    koufenzhi11=0;
                                case 5
                                    koufenzhi11=0;
                            end
                            switch str2double(get(handles.zaihaizhi12,'String'))
                                case 1
                                    koufenzhi12=0;
                                case 2
                                    koufenzhi12=0;
                                case 3
                                    koufenzhi12=0;
                                case 4
                                    koufenzhi12=0;
                                case 5
                                    koufenzhi12=0;
                            end
                            
                            %�� ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                        case 3%��֧��
                            switch str2double(get(handles.zaihaizhi1,'String'))
                                case 1
                                    koufenzhi1=0;
                                case 2
                                    koufenzhi1=25;
                                case 3
                                    koufenzhi1=40;
                                case 4
                                    koufenzhi1=50;
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
                            end%��֧��end
                            switch str2double(get(handles.zaihaizhi4,'String'))
                                case 1
                                    koufenzhi4=0;
                                case 2
                                    koufenzhi4=0;
                                case 3
                                    koufenzhi4=0;
                                case 4
                                    koufenzhi4=0;
                                case 5
                                    koufenzhi4=0;
                            end
                            switch str2double(get(handles.zaihaizhi5,'String'))
                                case 1
                                    koufenzhi5=0;
                                case 2
                                    koufenzhi5=0;
                                case 3
                                    koufenzhi5=0;
                                case 4
                                    koufenzhi5=0;
                                case 5
                                    koufenzhi5=0;
                            end
                            switch str2double(get(handles.zaihaizhi6,'String'))
                                case 1
                                    koufenzhi6=0;
                                case 2
                                    koufenzhi6=0;
                                case 3
                                    koufenzhi6=0;
                                case 4
                                    koufenzhi6=0;
                                case 5
                                    koufenzhi6=0;
                            end
                            switch str2double(get(handles.zaihaizhi7,'String'))%��
                                case 1
                                    koufenzhi7=0;
                                case 2
                                    koufenzhi7=0;
                                case 3
                                    koufenzhi7=0;
                                case 4
                                    koufenzhi7=0;
                                case 5
                                    koufenzhi7=0;
                            end
                            switch str2double(get(handles.zaihaizhi8,'String'))
                                case 1
                                    koufenzhi8=0;
                                case 2
                                    koufenzhi8=0;
                                case 3
                                    koufenzhi8=0;
                                case 4
                                    koufenzhi8=0;
                                case 5
                                    koufenzhi8=0;
                            end
                            switch str2double(get(handles.zaihaizhi9,'String'))
                                case 1
                                    koufenzhi9=0;
                                case 2
                                    koufenzhi9=0;
                                case 3
                                    koufenzhi9=0;
                                case 4
                                    koufenzhi9=0;
                                case 5
                                    koufenzhi9=0;
                            end
                            switch str2double(get(handles.zaihaizhi10,'String'))
                                case 1
                                    koufenzhi10=0;
                                case 2
                                    koufenzhi10=0;
                                case 3
                                    koufenzhi10=00;
                                case 4
                                    koufenzhi10=0;
                                case 5
                                    koufenzhi10=0;
                            end
                            switch str2double(get(handles.zaihaizhi11,'String'))
                                case 1
                                    koufenzhi11=0;
                                case 2
                                    koufenzhi11=0;
                                case 3
                                    koufenzhi11=0;
                                case 4
                                    koufenzhi11=0;
                                case 5
                                    koufenzhi11=0;
                            end
                            switch str2double(get(handles.zaihaizhi12,'String'))
                                case 1
                                    koufenzhi12=0;
                                case 2
                                    koufenzhi12=0;
                                case 3
                                    koufenzhi12=0;
                                case 4
                                    koufenzhi12=0;
                                case 5
                                    koufenzhi12=0;
                            end
                            
                            %��֧�� ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                            
                            
                      case 4%��������ʽ֧��
                             switch str2double(get(handles.zaihaizhi1,'String'))
                                case 1
                                    koufenzhi1=0;
                                case 2
                                    koufenzhi1=25;
                                case 3
                                    koufenzhi1=40;
                                case 4
                                    koufenzhi1=50;
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
                            end%������end
                            switch str2double(get(handles.zaihaizhi4,'String'))
                                case 1
                                    koufenzhi4=0;
                                case 2
                                    koufenzhi4=0;
                                case 3
                                    koufenzhi4=0;
                                case 4
                                    koufenzhi4=0;
                                case 5
                                    koufenzhi4=0;
                            end
                            switch str2double(get(handles.zaihaizhi5,'String'))
                                case 1
                                    koufenzhi5=0;
                                case 2
                                    koufenzhi5=0;
                                case 3
                                    koufenzhi5=0;
                                case 4
                                    koufenzhi5=0;
                                case 5
                                    koufenzhi5=0;
                            end
                            switch str2double(get(handles.zaihaizhi6,'String'))
                                case 1
                                    koufenzhi6=0;
                                case 2
                                    koufenzhi6=0;
                                case 3
                                    koufenzhi6=0;
                                case 4
                                    koufenzhi6=0;
                                case 5
                                    koufenzhi6=0;
                            end
                            switch str2double(get(handles.zaihaizhi7,'String'))%��
                                case 1
                                    koufenzhi7=0;
                                case 2
                                    koufenzhi7=0;
                                case 3
                                    koufenzhi7=0;
                                case 4
                                    koufenzhi7=0;
                                case 5
                                    koufenzhi7=0;
                            end
                            switch str2double(get(handles.zaihaizhi8,'String'))
                                case 1
                                    koufenzhi8=0;
                                case 2
                                    koufenzhi8=0;
                                case 3
                                    koufenzhi8=0;
                                case 4
                                    koufenzhi8=0;
                                case 5
                                    koufenzhi8=0;
                            end
                            switch str2double(get(handles.zaihaizhi9,'String'))
                                case 1
                                    koufenzhi9=0;
                                case 2
                                    koufenzhi9=0;
                                case 3
                                    koufenzhi9=0;
                                case 4
                                    koufenzhi9=0;
                                case 5
                                    koufenzhi9=0;
                            end
                            switch str2double(get(handles.zaihaizhi10,'String'))
                                case 1
                                    koufenzhi10=0;
                                case 2
                                    koufenzhi10=0;
                                case 3
                                    koufenzhi10=00;
                                case 4
                                    koufenzhi10=0;
                                case 5
                                    koufenzhi10=0;
                            end
                            switch str2double(get(handles.zaihaizhi11,'String'))
                                case 1
                                    koufenzhi11=0;
                                case 2
                                    koufenzhi11=0;
                                case 3
                                    koufenzhi11=0;
                                case 4
                                    koufenzhi11=0;
                                case 5
                                    koufenzhi11=0;
                            end
                            switch str2double(get(handles.zaihaizhi12,'String'))
                                case 1
                                    koufenzhi12=0;
                                case 2
                                    koufenzhi12=0;
                                case 3
                                    koufenzhi12=0;
                                case 4
                                    koufenzhi12=0;
                                case 5
                                    koufenzhi12=0;
                            end
                            %��������ʽ֧�� ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                    end
            end
    case 3%�²��ṹ
        switch get(handles.popupmenu2,'Value')
                case 1
                case 2%�Ŷ�
                    switch get(handles.popupmenu3,'Value')
                        case 1
                        case 2%����
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
                                    koufenzhi4=35;
                                case 3
                                    koufenzhi4=45;
                                case 4
                                    koufenzhi4=60;
                                case 5
                                    koufenzhi4=100;
                            end
                            switch str2double(get(handles.zaihaizhi5,'String'))
                               case 1
                                    koufenzhi5=0;
                                case 2
                                    koufenzhi5=25;
                                case 3
                                    koufenzhi5=40;
                                case 4
                                    koufenzhi5=50;
                                case 5
                                    koufenzhi5=0;
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
                                    koufenzhi7=25;
                                case 3
                                    koufenzhi7=40;
                                case 4
                                    koufenzhi7=50;
                                case 5
                                    koufenzhi7=0;
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
                                    koufenzhi9=0;
                                case 3
                                    koufenzhi9=0;
                                case 4
                                    koufenzhi9=0;
                                case 5
                                    koufenzhi9=0;
                            end
                            switch str2double(get(handles.zaihaizhi10,'String'))
                              case 1
                                    koufenzhi10=0;
                                case 2
                                    koufenzhi10=0;
                                case 3
                                    koufenzhi10=0;
                                case 4
                                    koufenzhi10=0;
                                case 5
                                    koufenzhi10=0;
                            end
                            switch str2double(get(handles.zaihaizhi11,'String'))
                                case 1
                                    koufenzhi11=0;
                                case 2
                                    koufenzhi11=0;
                                case 3
                                    koufenzhi11=0;
                                case 4
                                    koufenzhi11=0;
                                case 5
                                    koufenzhi11=0;
                            end
                            switch str2double(get(handles.zaihaizhi12,'String'))
                                case 1
                                    koufenzhi12=0;
                                case 2
                                    koufenzhi12=0;
                                case 3
                                    koufenzhi12=0;
                                case 4
                                    koufenzhi12=0;
                                case 5
                                    koufenzhi12=0;
                            end
                            global dunshen;
                            dunshen=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                        case 3%�����ϵ��
                            %--------------------------------------------------
                            %������ϵ��
                            %--------------------------------------------------
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
                                    koufenzhi4=35;
                                case 3
                                    koufenzhi4=45;
                                case 4
                                    koufenzhi4=60;
                                case 5
                                    koufenzhi4=100;
                            end
                            switch str2double(get(handles.zaihaizhi5,'String'))
                                 case 1
                                    koufenzhi5=0;
                                case 2
                                    koufenzhi5=25;
                                case 3
                                    koufenzhi5=40;
                                case 4
                                    koufenzhi5=50;
                                case 5
                                    koufenzhi5=0;
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
                                    koufenzhi7=0;
                                case 3
                                    koufenzhi7=0;
                                case 4
                                    koufenzhi7=0;
                                case 5
                                    koufenzhi7=0;
                            end
                            switch str2double(get(handles.zaihaizhi8,'String'))
                                 case 1
                                    koufenzhi8=0;
                                case 2
                                    koufenzhi8=0;
                                case 3
                                    koufenzhi8=0;
                                case 4
                                    koufenzhi8=0;
                                case 5
                                    koufenzhi8=0;
                            end
                            switch str2double(get(handles.zaihaizhi9,'String'))
                                case 1
                                    koufenzhi9=0;
                                case 2
                                    koufenzhi9=0;
                                case 3
                                    koufenzhi9=0;
                                case 4
                                    koufenzhi9=0;
                                case 5
                                    koufenzhi9=0;
                            end
                            switch str2double(get(handles.zaihaizhi10,'String'))
                              case 1
                                    koufenzhi10=0;
                                case 2
                                    koufenzhi10=0;
                                case 3
                                    koufenzhi10=0;
                                case 4
                                    koufenzhi10=0;
                                case 5
                                    koufenzhi10=0;
                            end
                            switch str2double(get(handles.zaihaizhi11,'String'))
                                case 1
                                    koufenzhi11=0;
                                case 2
                                    koufenzhi11=0;
                                case 3
                                    koufenzhi11=0;
                                case 4
                                    koufenzhi11=0;
                                case 5
                                    koufenzhi11=0;
                            end
                            switch str2double(get(handles.zaihaizhi12,'String'))
                                case 1
                                    koufenzhi12=0;
                                case 2
                                    koufenzhi12=0;
                                case 3
                                    koufenzhi12=0;
                                case 4
                                    koufenzhi12=0;
                                case 5
                                    koufenzhi12=0;
                            end
                            global gailiang;
                            gailiang=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            

                    end
                            %�Ŷ�=����+������ϵ��
                            global dunshen;
                            global gailiang;
                            a=[dunshen gailiang];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,24);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:24
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end   
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                           
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                            
                            
                case 3%��̨
                    switch get(handles.popupmenu3,'Value')
                        case 1
                        case 2%̨��
                            %--------------------------------------------------
                            %̨��
                            %--------------------------------------------------
                            switch str2double(get(handles.zaihaizhi1,'String'))
                                case 1
                                    koufenzhi1=0;
                                case 2
                                    koufenzhi1=25;
                                case 3
                                    koufenzhi1=40;
                                case 4
                                    koufenzhi1=50;
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
                                    koufenzhi3=20;
                                case 3
                                    koufenzhi3=35;
                                case 4
                                    koufenzhi3=0;
                                case 5
                                    koufenzhi3=0;
                            end
                            switch str2double(get(handles.zaihaizhi4,'String'))
                                case 1
                                    koufenzhi4=0;
                                case 2
                                    koufenzhi4=20;
                                case 3
                                    koufenzhi4=35;
                                case 4
                                    koufenzhi4=0;
                                case 5
                                    koufenzhi4=0;
                            end
                            switch str2double(get(handles.zaihaizhi5,'String'))
                                case 1
                                    koufenzhi5=0;
                                case 2
                                    koufenzhi5=25;
                                case 3
                                    koufenzhi5=40;
                                case 4
                                    koufenzhi5=50;
                                case 5
                                    koufenzhi5=0;
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
                                    koufenzhi7=25;
                                case 3
                                    koufenzhi7=40;
                                case 4
                                    koufenzhi7=50;
                                case 5
                                    koufenzhi7=0;
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
                                    koufenzhi10=0;
                                case 3
                                    koufenzhi10=0;
                                case 4
                                    koufenzhi10=0;
                                case 5
                                    koufenzhi10=0;
                            end
                            switch str2double(get(handles.zaihaizhi11,'String'))
                                case 1
                                    koufenzhi11=0;
                                case 2
                                    koufenzhi11=0;
                                case 3
                                    koufenzhi11=0;
                                case 4
                                    koufenzhi11=0;
                                case 5
                                    koufenzhi11=0;
                            end
                            switch str2double(get(handles.zaihaizhi12,'String'))
                                case 1
                                    koufenzhi12=0;
                                case 2
                                    koufenzhi12=0;
                                case 3
                                    koufenzhi12=0;
                                case 4
                                    koufenzhi12=0;
                                case 5
                                    koufenzhi12=0;
                            end
                            global taishen;
                            taishen=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                        case 3%̨ñ
                            %--------------------------------------------------
                            %̨ñ
                            %--------------------------------------------------

                            switch str2double(get(handles.zaihaizhi1,'String'))
                                case 1
                                    koufenzhi1=0;
                                case 2
                                    koufenzhi1=25;
                                case 3
                                    koufenzhi1=40;
                                case 4
                                    koufenzhi1=50;
                                case 5
                                    koufenzhi1=0;
                            end
                            switch str2double(get(handles.zaihaizhi2,'String'))
                                case 1
                                    koufenzhi2=0;
                                case 2
                                    koufenzhi2=20;
                                case 3
                                    koufenzhi2=35;
                                case 4
                                    koufenzhi2=0;
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
                                    koufenzhi5=0;
                                case 3
                                    koufenzhi5=0;
                                case 4
                                    koufenzhi5=0;
                                case 5
                                    koufenzhi5=0;
                            end
                            switch str2double(get(handles.zaihaizhi6,'String'))
                                case 1
                                    koufenzhi6=0;
                                case 2
                                    koufenzhi6=0;
                                case 3
                                    koufenzhi6=0;
                                case 4
                                    koufenzhi6=0;
                                case 5
                                    koufenzhi6=0;
                            end
                            switch str2double(get(handles.zaihaizhi7,'String'))
                              case 1
                                    koufenzhi7=0;
                                case 2
                                    koufenzhi7=0;
                                case 3
                                    koufenzhi7=0;
                                case 4
                                    koufenzhi7=0;
                                case 5
                                    koufenzhi7=0;
                            end
                            switch str2double(get(handles.zaihaizhi8,'String'))
                                 case 1
                                    koufenzhi8=0;
                                case 2
                                    koufenzhi8=0;
                                case 3
                                    koufenzhi8=0;
                                case 4
                                    koufenzhi8=0;
                                case 5
                                    koufenzhi8=0;
                            end
                            switch str2double(get(handles.zaihaizhi9,'String'))
                                case 1
                                    koufenzhi9=0;
                                case 2
                                    koufenzhi9=0;
                                case 3
                                    koufenzhi9=0;
                                case 4
                                    koufenzhi9=0;
                                case 5
                                    koufenzhi9=0;
                            end
                            switch str2double(get(handles.zaihaizhi10,'String'))
                              case 1
                                    koufenzhi10=0;
                                case 2
                                    koufenzhi10=0;
                                case 3
                                    koufenzhi10=0;
                                case 4
                                    koufenzhi10=0;
                                case 5
                                    koufenzhi10=0;
                            end
                            switch str2double(get(handles.zaihaizhi11,'String'))
                                case 1
                                    koufenzhi11=0;
                                case 2
                                    koufenzhi11=0;
                                case 3
                                    koufenzhi11=0;
                                case 4
                                    koufenzhi11=0;
                                case 5
                                    koufenzhi11=0;
                            end
                            switch str2double(get(handles.zaihaizhi12,'String'))
                                case 1
                                    koufenzhi12=0;
                                case 2
                                    koufenzhi12=0;
                                case 3
                                    koufenzhi12=0;
                                case 4
                                    koufenzhi12=0;
                                case 5
                                    koufenzhi12=0;
                            end
                            global taimao;
                            taimao=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                    end
                           %��̨=̨��+̨ñ
                           global taishen;
                           global taimao;
                           
                            a=[taishen taimao];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,24);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:24
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end   
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                    
            case 4%����
                    %--------------------------------------------------
                    %--------------------------------------------------
                    %��̨����
                    %--------------------------------------------------
                    %--------------------------------------------------

                    switch str2double(get(handles.zaihaizhi1,'String'))
                        case 1
                            koufenzhi1=0;
                        case 2
                            koufenzhi1=35;
                        case 3
                            koufenzhi1=45;
                        case 4
                            koufenzhi1=60;
                        case 5
                            koufenzhi1=100;
                    end
                    switch str2double(get(handles.zaihaizhi2,'String'))
                        case 1
                            koufenzhi2=0;
                        case 2
                            koufenzhi2=35;
                        case 3
                            koufenzhi2=45;
                        case 4
                            koufenzhi2=60;
                        case 5
                            koufenzhi2=100;
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
                            koufenzhi6=35;
                        case 3
                            koufenzhi6=45;
                        case 4
                            koufenzhi6=60;
                        case 5
                            koufenzhi6=100;
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
                            koufenzhi8=0;
                        case 3
                            koufenzhi8=0;
                        case 4
                            koufenzhi8=0;
                        case 5
                            koufenzhi8=0;
                    end
                    switch str2double(get(handles.zaihaizhi9,'String'))
                        case 1
                            koufenzhi9=0;
                        case 2
                            koufenzhi9=0;
                        case 3
                            koufenzhi9=0;
                        case 4
                            koufenzhi9=0;
                        case 5
                            koufenzhi9=0;
                    end
                    switch str2double(get(handles.zaihaizhi10,'String'))
                      case 1
                            koufenzhi10=0;
                        case 2
                            koufenzhi10=0;
                        case 3
                            koufenzhi10=0;
                        case 4
                            koufenzhi10=0;
                        case 5
                            koufenzhi10=0;
                    end
                    switch str2double(get(handles.zaihaizhi11,'String'))
                        case 1
                            koufenzhi11=0;
                        case 2
                            koufenzhi11=0;
                        case 3
                            koufenzhi11=0;
                        case 4
                            koufenzhi11=0;
                        case 5
                            koufenzhi11=0;
                    end
                    switch str2double(get(handles.zaihaizhi12,'String'))
                        case 1
                            koufenzhi12=0;
                        case 2
                            koufenzhi12=0;
                        case 3
                            koufenzhi12=0;
                        case 4
                            koufenzhi12=0;
                        case 5
                            koufenzhi12=0;
                    end
                    
                          %��̨ ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                            
                            
            case 5%��ǽ����ǽ
                %--------------------------------------------------
                %--------------------------------------------------
                %��ǽ����ǽ
                %--------------------------------------------------
                %--------------------------------------------------

                switch str2double(get(handles.zaihaizhi1,'String'))
                    case 1
                        koufenzhi1=0;
                    case 2
                        koufenzhi1=25;
                    case 3
                        koufenzhi1=40;
                    case 4
                        koufenzhi1=50;
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
                        koufenzhi5=0;
                    case 3
                        koufenzhi5=0;
                    case 4
                        koufenzhi5=0;
                    case 5
                        koufenzhi5=0;
                end
                switch str2double(get(handles.zaihaizhi6,'String'))
                    case 1
                        koufenzhi6=0;
                    case 2
                        koufenzhi6=0;
                    case 3
                        koufenzhi6=0;
                    case 4
                        koufenzhi6=0;
                    case 5
                        koufenzhi6=0;
                end
                switch str2double(get(handles.zaihaizhi7,'String'))
                  case 1
                        koufenzhi7=0;
                    case 2
                        koufenzhi7=0;
                    case 3
                        koufenzhi7=0;
                    case 4
                        koufenzhi7=0;
                    case 5
                        koufenzhi7=0;
                end
                switch str2double(get(handles.zaihaizhi8,'String'))
                     case 1
                        koufenzhi8=0;
                    case 2
                        koufenzhi8=0;
                    case 3
                        koufenzhi8=0;
                    case 4
                        koufenzhi8=0;
                    case 5
                        koufenzhi8=0;
                end
                switch str2double(get(handles.zaihaizhi9,'String'))
                    case 1
                        koufenzhi9=0;
                    case 2
                        koufenzhi9=0;
                    case 3
                        koufenzhi9=0;
                    case 4
                        koufenzhi9=0;
                    case 5
                        koufenzhi9=0;
                end
                switch str2double(get(handles.zaihaizhi10,'String'))
                  case 1
                        koufenzhi10=0;
                    case 2
                        koufenzhi10=0;
                    case 3
                        koufenzhi10=0;
                    case 4
                        koufenzhi10=0;
                    case 5
                        koufenzhi10=0;
                end
                switch str2double(get(handles.zaihaizhi11,'String'))
                    case 1
                        koufenzhi11=0;
                    case 2
                        koufenzhi11=0;
                    case 3
                        koufenzhi11=0;
                    case 4
                        koufenzhi11=0;
                    case 5
                        koufenzhi11=0;
                end
                switch str2double(get(handles.zaihaizhi12,'String'))
                    case 1
                        koufenzhi12=0;
                    case 2
                        koufenzhi12=0;
                    case 3
                        koufenzhi12=0;
                    case 4
                        koufenzhi12=0;
                    case 5
                        koufenzhi12=0;
                end
                
                           %��ǽ����ǽ ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                            
                            
            case 6%׶�ºͻ���
                %--------------------------------------------------
                %--------------------------------------------------
                %׶�¡�����
                %--------------------------------------------------
                %--------------------------------------------------

                switch str2double(get(handles.zaihaizhi1,'String'))
                    case 1
                        koufenzhi1=0;
                    case 2
                        koufenzhi1=25;
                    case 3
                        koufenzhi1=40;
                    case 4
                        koufenzhi1=50;
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
                        koufenzhi3=0;
                    case 3
                        koufenzhi3=0;
                    case 4
                        koufenzhi3=0;
                    case 5
                        koufenzhi3=0;
                end
                switch str2double(get(handles.zaihaizhi4,'String'))
                    case 1
                        koufenzhi4=0;
                    case 2
                        koufenzhi4=0;
                    case 3
                        koufenzhi4=0;
                    case 4
                        koufenzhi4=0;
                    case 5
                        koufenzhi4=0;
                end
                switch str2double(get(handles.zaihaizhi5,'String'))
                   case 1
                        koufenzhi5=0;
                    case 2
                        koufenzhi5=0;
                    case 3
                        koufenzhi5=0;
                    case 4
                        koufenzhi5=0;
                    case 5
                        koufenzhi5=0;
                end
                switch str2double(get(handles.zaihaizhi6,'String'))
                    case 1
                        koufenzhi6=0;
                    case 2
                        koufenzhi6=0;
                    case 3
                        koufenzhi6=0;
                    case 4
                        koufenzhi6=0;
                    case 5
                        koufenzhi6=0;
                end
                switch str2double(get(handles.zaihaizhi7,'String'))
                  case 1
                        koufenzhi7=0;
                    case 2
                        koufenzhi7=0;
                    case 3
                        koufenzhi7=0;
                    case 4
                        koufenzhi7=0;
                    case 5
                        koufenzhi7=0;
                end
                switch str2double(get(handles.zaihaizhi8,'String'))
                     case 1
                        koufenzhi8=0;
                    case 2
                        koufenzhi8=0;
                    case 3
                        koufenzhi8=0;
                    case 4
                        koufenzhi8=0;
                    case 5
                        koufenzhi8=0;
                end
                switch str2double(get(handles.zaihaizhi9,'String'))
                    case 1
                        koufenzhi9=0;
                    case 2
                        koufenzhi9=0;
                    case 3
                        koufenzhi9=0;
                    case 4
                        koufenzhi9=0;
                    case 5
                        koufenzhi9=0;
                end
                switch str2double(get(handles.zaihaizhi10,'String'))
                  case 1
                        koufenzhi10=0;
                    case 2
                        koufenzhi10=0;
                    case 3
                        koufenzhi10=0;
                    case 4
                        koufenzhi10=0;
                    case 5
                        koufenzhi10=0;
                end
                switch str2double(get(handles.zaihaizhi11,'String'))
                    case 1
                        koufenzhi11=0;
                    case 2
                        koufenzhi11=0;
                    case 3
                        koufenzhi11=0;
                    case 4
                        koufenzhi11=0;
                    case 5
                        koufenzhi11=0;
                end
                switch str2double(get(handles.zaihaizhi12,'String'))
                    case 1
                        koufenzhi12=0;
                    case 2
                        koufenzhi12=0;
                    case 3
                        koufenzhi12=0;
                    case 4
                        koufenzhi12=0;
                    case 5
                        koufenzhi12=0;
                end
                
                            %׶�¡����� ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                            
                            
            case 7%�Ӵ�
                %--------------------------------------------------
                %�Ӵ�
                %--------------------------------------------------

                switch str2double(get(handles.zaihaizhi1,'String'))
                    case 1
                        koufenzhi1=0;
                    case 2
                        koufenzhi1=25;
                    case 3
                        koufenzhi1=40;
                    case 4
                        koufenzhi1=50;
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
                        koufenzhi4=0;
                    case 3
                        koufenzhi4=0;
                    case 4
                        koufenzhi4=0;
                    case 5
                        koufenzhi4=0;
                end
                switch str2double(get(handles.zaihaizhi5,'String'))
                   case 1
                        koufenzhi5=0;
                    case 2
                        koufenzhi5=0;
                    case 3
                        koufenzhi5=0;
                    case 4
                        koufenzhi5=0;
                    case 5
                        koufenzhi5=0;
                end
                switch str2double(get(handles.zaihaizhi6,'String'))
                    case 1
                        koufenzhi6=0;
                    case 2
                        koufenzhi6=0;
                    case 3
                        koufenzhi6=0;
                    case 4
                        koufenzhi6=0;
                    case 5
                        koufenzhi6=0;
                end
                switch str2double(get(handles.zaihaizhi7,'String'))
                  case 1
                        koufenzhi7=0;
                    case 2
                        koufenzhi7=0;
                    case 3
                        koufenzhi7=0;
                    case 4
                        koufenzhi7=0;
                    case 5
                        koufenzhi7=0;
                end
                switch str2double(get(handles.zaihaizhi8,'String'))
                     case 1
                        koufenzhi8=0;
                    case 2
                        koufenzhi8=0;
                    case 3
                        koufenzhi8=0;
                    case 4
                        koufenzhi8=0;
                    case 5
                        koufenzhi8=0;
                end
                switch str2double(get(handles.zaihaizhi9,'String'))
                    case 1
                        koufenzhi9=0;
                    case 2
                        koufenzhi9=0;
                    case 3
                        koufenzhi9=0;
                    case 4
                        koufenzhi9=0;
                    case 5
                        koufenzhi9=0;
                end
                switch str2double(get(handles.zaihaizhi10,'String'))
                  case 1
                        koufenzhi10=0;
                    case 2
                        koufenzhi10=0;
                    case 3
                        koufenzhi10=0;
                    case 4
                        koufenzhi10=0;
                    case 5
                        koufenzhi10=0;
                end
                switch str2double(get(handles.zaihaizhi11,'String'))
                    case 1
                        koufenzhi11=0;
                    case 2
                        koufenzhi11=0;
                    case 3
                        koufenzhi11=0;
                    case 4
                        koufenzhi11=0;
                    case 5
                        koufenzhi11=0;
                end
                switch str2double(get(handles.zaihaizhi12,'String'))
                    case 1
                        koufenzhi12=0;
                    case 2
                        koufenzhi12=0;
                    case 3
                        koufenzhi12=0;
                    case 4
                        koufenzhi12=0;
                    case 5
                        koufenzhi12=0;
                end
                            %�Ӵ� ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
            case 8%����
                %--------------------------------------------------
                %���ƹ�����
                %--------------------------------------------------
                switch str2double(get(handles.zaihaizhi1,'String'))
                    case 1
                        koufenzhi1=0;
                    case 2
                        koufenzhi1=25;
                    case 3
                        koufenzhi1=40;
                    case 4
                        koufenzhi1=50;
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
                        koufenzhi3=0;
                    case 3
                        koufenzhi3=0;
                    case 4
                        koufenzhi3=0;
                    case 5
                        koufenzhi3=0;
                end
                switch str2double(get(handles.zaihaizhi4,'String'))
                    case 1
                        koufenzhi4=0;
                    case 2
                        koufenzhi4=0;
                    case 3
                        koufenzhi4=0;
                    case 4
                        koufenzhi4=0;
                    case 5
                        koufenzhi4=0;
                end
                switch str2double(get(handles.zaihaizhi5,'String'))
                   case 1
                        koufenzhi5=0;
                    case 2
                        koufenzhi5=0;
                    case 3
                        koufenzhi5=0;
                    case 4
                        koufenzhi5=0;
                    case 5
                        koufenzhi5=0;
                end
                switch str2double(get(handles.zaihaizhi6,'String'))
                    case 1
                        koufenzhi6=0;
                    case 2
                        koufenzhi6=0;
                    case 3
                        koufenzhi6=0;
                    case 4
                        koufenzhi6=0;
                    case 5
                        koufenzhi6=0;
                end
                switch str2double(get(handles.zaihaizhi7,'String'))
                  case 1
                        koufenzhi7=0;
                    case 2
                        koufenzhi7=0;
                    case 3
                        koufenzhi7=0;
                    case 4
                        koufenzhi7=0;
                    case 5
                        koufenzhi7=0;
                end
                switch str2double(get(handles.zaihaizhi8,'String'))
                     case 1
                        koufenzhi8=0;
                    case 2
                        koufenzhi8=0;
                    case 3
                        koufenzhi8=0;
                    case 4
                        koufenzhi8=0;
                    case 5
                        koufenzhi8=0;
                end
                switch str2double(get(handles.zaihaizhi9,'String'))
                    case 1
                        koufenzhi9=0;
                    case 2
                        koufenzhi9=0;
                    case 3
                        koufenzhi9=0;
                    case 4
                        koufenzhi9=0;
                    case 5
                        koufenzhi9=0;
                end
                switch str2double(get(handles.zaihaizhi10,'String'))
                  case 1
                        koufenzhi10=0;
                    case 2
                        koufenzhi10=0;
                    case 3
                        koufenzhi10=0;
                    case 4
                        koufenzhi10=0;
                    case 5
                        koufenzhi10=0;
                end
                switch str2double(get(handles.zaihaizhi11,'String'))
                    case 1
                        koufenzhi11=0;
                    case 2
                        koufenzhi11=0;
                    case 3
                        koufenzhi11=0;
                    case 4
                        koufenzhi11=0;
                    case 5
                        koufenzhi11=0;
                end
                switch str2double(get(handles.zaihaizhi12,'String'))
                    case 1
                        koufenzhi12=0;
                    case 2
                        koufenzhi12=0;
                    case 3
                        koufenzhi12=0;
                    case 4
                        koufenzhi12=0;
                    case 5
                        koufenzhi12=0;
                end
                            %���� ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
        end
    case 4%����ϵ
        switch get(handles.popupmenu2,'Value')
                case 1
                case 2%������װ
                    switch get(handles.popupmenu3,'Value')
                        case 1
                        case 2%���������
                            %���������
                            switch str2double(get(handles.zaihaizhi1,'String'))
                                case 1
                                    koufenzhi1=0;
                                case 2
                                    koufenzhi1=25;
                                case 3
                                    koufenzhi1=40;
                                case 4
                                    koufenzhi1=50;
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
                                    koufenzhi5=0;
                                case 3
                                    koufenzhi5=0;
                                case 4
                                    koufenzhi5=0;
                                case 5
                                    koufenzhi5=0;
                            end
                            switch str2double(get(handles.zaihaizhi6,'String'))
                                case 1
                                    koufenzhi6=0;
                                case 2
                                    koufenzhi6=0;
                                case 3
                                    koufenzhi6=0;
                                case 4
                                    koufenzhi6=0;
                                case 5
                                    koufenzhi6=0;
                            end
                            switch str2double(get(handles.zaihaizhi7,'String'))
                                case 1
                                    koufenzhi7=0;
                                case 2
                                    koufenzhi7=0;
                                case 3
                                    koufenzhi7=0;
                                case 4
                                    koufenzhi7=0;
                                case 5
                                    koufenzhi7=0;
                            end
                            switch str2double(get(handles.zaihaizhi8,'String'))
                                case 1
                                    koufenzhi8=0;
                                case 2
                                    koufenzhi8=0;
                                case 3
                                    koufenzhi8=0;
                                case 4
                                    koufenzhi8=0;
                                case 5
                                    koufenzhi8=0;
                            end
                            switch str2double(get(handles.zaihaizhi9,'String'))
                                case 1
                                    koufenzhi9=0;
                                case 2
                                    koufenzhi9=0;
                                case 3
                                    koufenzhi9=0;
                                case 4
                                    koufenzhi9=0;
                                case 5
                                    koufenzhi9=0;
                            end
                            switch str2double(get(handles.zaihaizhi10,'String'))
                                case 1
                                    koufenzhi10=0;
                                case 2
                                    koufenzhi10=0;
                                case 3
                                    koufenzhi10=0;
                                case 4
                                    koufenzhi10=0;
                                case 5
                                    koufenzhi10=0;
                            end
                            switch str2double(get(handles.zaihaizhi11,'String'))
                                case 1
                                    koufenzhi11=0;
                                case 2
                                    koufenzhi11=0;
                                case 3
                                    koufenzhi11=0;
                                case 4
                                    koufenzhi11=0;
                                case 5
                                    koufenzhi11=0;
                            end
                            switch str2double(get(handles.zaihaizhi12,'String'))
                                case 1
                                    koufenzhi12=0;
                                case 2
                                    koufenzhi12=0;
                                case 3
                                    koufenzhi12=0;
                                case 4
                                    koufenzhi12=0;
                                case 5
                                    koufenzhi12=0;
                            end
                           %���� ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                            
                            
                        case 3%ˮ�������
                            %ˮ�������
                            switch str2double(get(handles.zaihaizhi1,'String'))
                                case 1
                                    koufenzhi1=0;
                                case 2
                                    koufenzhi1=25;
                                case 3
                                    koufenzhi1=40;
                                case 4
                                    koufenzhi1=50;
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
                                    koufenzhi5=25;
                                case 3
                                    koufenzhi5=40;
                                case 4
                                    koufenzhi5=50;
                                case 5
                                    koufenzhi5=0;
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
                                    koufenzhi7=25;
                                case 3
                                    koufenzhi7=40;
                                case 4
                                    koufenzhi7=50;
                                case 5
                                    koufenzhi7=0;
                            end
                            switch str2double(get(handles.zaihaizhi8,'String'))
                                case 1
                                    koufenzhi8=0;
                                case 2
                                    koufenzhi8=0;
                                case 3
                                    koufenzhi8=0;
                                case 4
                                    koufenzhi8=0;
                                case 5
                                    koufenzhi8=0;
                            end
                            switch str2double(get(handles.zaihaizhi9,'String'))
                                case 1
                                    koufenzhi9=0;
                                case 2
                                    koufenzhi9=0;
                                case 3
                                    koufenzhi9=0;
                                case 4
                                    koufenzhi9=0;
                                case 5
                                    koufenzhi9=0;
                            end
                            switch str2double(get(handles.zaihaizhi10,'String'))
                                case 1
                                    koufenzhi10=0;
                                case 2
                                    koufenzhi10=0;
                                case 3
                                    koufenzhi10=0;
                                case 4
                                    koufenzhi10=0;
                                case 5
                                    koufenzhi10=0;
                            end
                            switch str2double(get(handles.zaihaizhi11,'String'))
                                case 1
                                    koufenzhi11=0;
                                case 2
                                    koufenzhi11=0;
                                case 3
                                    koufenzhi11=0;
                                case 4
                                    koufenzhi11=0;
                                case 5
                                    koufenzhi11=0;
                            end
                            switch str2double(get(handles.zaihaizhi12,'String'))
                                case 1
                                    koufenzhi12=0;
                                case 2
                                    koufenzhi12=0;
                                case 3
                                    koufenzhi12=0;
                                case 4
                                    koufenzhi12=0;
                                case 5
                                    koufenzhi12=0;
                            end
                            
                            %ˮ������� ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                            
                    end
                          
                            
                            
            case 3%������װ��
                %������װ��
                switch str2double(get(handles.zaihaizhi1,'String'))
                    case 1
                        koufenzhi1=0;
                    case 2
                        koufenzhi1=25;
                    case 3
                        koufenzhi1=40;
                    case 4
                        koufenzhi1=50;
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
                        koufenzhi5=25;
                    case 3
                        koufenzhi5=40;
                    case 4
                        koufenzhi5=50;
                    case 5
                        koufenzhi5=0;
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
                        koufenzhi7=25;
                    case 3
                        koufenzhi7=40;
                    case 4
                        koufenzhi7=50;
                    case 5
                        koufenzhi7=0;
                end
                switch str2double(get(handles.zaihaizhi8,'String'))
                    case 1
                        koufenzhi8=0;
                    case 2
                        koufenzhi8=0;
                    case 3
                        koufenzhi8=0;
                    case 4
                        koufenzhi8=0;
                    case 5
                        koufenzhi8=0;
                end
                switch str2double(get(handles.zaihaizhi9,'String'))
                    case 1
                        koufenzhi9=0;
                    case 2
                        koufenzhi9=0;
                    case 3
                        koufenzhi9=0;
                    case 4
                        koufenzhi9=0;
                    case 5
                        koufenzhi9=0;
                end
                switch str2double(get(handles.zaihaizhi10,'String'))
                    case 1
                        koufenzhi10=0;
                    case 2
                        koufenzhi10=0;
                    case 3
                        koufenzhi10=0;
                    case 4
                        koufenzhi10=0;
                    case 5
                        koufenzhi10=0;
                end
                switch str2double(get(handles.zaihaizhi11,'String'))
                    case 1
                        koufenzhi11=0;
                    case 2
                        koufenzhi11=0;
                    case 3
                        koufenzhi11=0;
                    case 4
                        koufenzhi11=0;
                    case 5
                        koufenzhi11=0;
                end
                switch str2double(get(handles.zaihaizhi12,'String'))
                    case 1
                        koufenzhi12=0;
                    case 2
                        koufenzhi12=0;
                    case 3
                        koufenzhi12=0;
                    case 4
                        koufenzhi12=0;
                    case 5
                        koufenzhi12=0;
                end
                
                
                
                            %������ ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                            
                            
            case 4%���е�
                %���е�
                switch str2double(get(handles.zaihaizhi1,'String'))
                    case 1
                        koufenzhi1=0;
                    case 2
                        koufenzhi1=25;
                    case 3
                        koufenzhi1=40;
                    case 4
                        koufenzhi1=50;
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
                        koufenzhi3=0;
                    case 3
                        koufenzhi3=0;
                    case 4
                        koufenzhi3=0;
                    case 5
                        koufenzhi3=0;
                end
                switch str2double(get(handles.zaihaizhi4,'String'))
                    case 1
                        koufenzhi4=0;
                    case 2
                        koufenzhi4=0;
                    case 3
                        koufenzhi4=0;
                    case 4
                        koufenzhi4=0;
                    case 5
                        koufenzhi4=0;
                end
                switch str2double(get(handles.zaihaizhi5,'String'))
                    case 1
                        koufenzhi5=0;
                    case 2
                        koufenzhi5=0;
                    case 3
                        koufenzhi5=0;
                    case 4
                        koufenzhi5=0;
                    case 5
                        koufenzhi5=0;
                end
                switch str2double(get(handles.zaihaizhi6,'String'))
                    case 1
                        koufenzhi6=0;
                    case 2
                        koufenzhi6=0;
                    case 3
                        koufenzhi6=0;
                    case 4
                        koufenzhi6=0;
                    case 5
                        koufenzhi6=0;
                end
                switch str2double(get(handles.zaihaizhi7,'String'))
                    case 1
                        koufenzhi7=0;
                    case 2
                        koufenzhi7=0;
                    case 3
                        koufenzhi7=0;
                    case 4
                        koufenzhi7=0;
                    case 5
                        koufenzhi7=0;
                end
                switch str2double(get(handles.zaihaizhi8,'String'))
                    case 1
                        koufenzhi8=0;
                    case 2
                        koufenzhi8=0;
                    case 3
                        koufenzhi8=0;
                    case 4
                        koufenzhi8=0;
                    case 5
                        koufenzhi8=0;
                end
                switch str2double(get(handles.zaihaizhi9,'String'))
                    case 1
                        koufenzhi9=0;
                    case 2
                        koufenzhi9=0;
                    case 3
                        koufenzhi9=0;
                    case 4
                        koufenzhi9=0;
                    case 5
                        koufenzhi9=0;
                end
                switch str2double(get(handles.zaihaizhi10,'String'))
                    case 1
                        koufenzhi10=0;
                    case 2
                        koufenzhi10=0;
                    case 3
                        koufenzhi10=0;
                    case 4
                        koufenzhi10=0;
                    case 5
                        koufenzhi10=0;
                end
                switch str2double(get(handles.zaihaizhi11,'String'))
                    case 1
                        koufenzhi11=0;
                    case 2
                        koufenzhi11=0;
                    case 3
                        koufenzhi11=0;
                    case 4
                        koufenzhi11=0;
                    case 5
                        koufenzhi11=0;
                end
                switch str2double(get(handles.zaihaizhi12,'String'))
                    case 1
                        koufenzhi12=0;
                    case 2
                        koufenzhi12=0;
                    case 3
                        koufenzhi12=0;
                    case 4
                        koufenzhi12=0;
                    case 5
                        koufenzhi12=0;
                end
                            %���е� ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                            
            case 5%���ˡ�����
                %���ˡ�����
                switch str2double(get(handles.zaihaizhi1,'String'))
                    case 1
                        koufenzhi1=0;
                    case 2
                        koufenzhi1=25;
                    case 3
                        koufenzhi1=40;
                    case 4
                        koufenzhi1=50;
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
                        koufenzhi3=0;
                    case 3
                        koufenzhi3=0;
                    case 4
                        koufenzhi3=0;
                    case 5
                        koufenzhi3=0;
                end
                switch str2double(get(handles.zaihaizhi4,'String'))
                    case 1
                        koufenzhi4=0;
                    case 2
                        koufenzhi4=0;
                    case 3
                        koufenzhi4=0;
                    case 4
                        koufenzhi4=0;
                    case 5
                        koufenzhi4=0;
                end
                switch str2double(get(handles.zaihaizhi5,'String'))
                    case 1
                        koufenzhi5=0;
                    case 2
                        koufenzhi5=0;
                    case 3
                        koufenzhi5=0;
                    case 4
                        koufenzhi5=0;
                    case 5
                        koufenzhi5=0;
                end
                switch str2double(get(handles.zaihaizhi6,'String'))
                    case 1
                        koufenzhi6=0;
                    case 2
                        koufenzhi6=0;
                    case 3
                        koufenzhi6=0;
                    case 4
                        koufenzhi6=0;
                    case 5
                        koufenzhi6=0;
                end
                switch str2double(get(handles.zaihaizhi7,'String'))
                    case 1
                        koufenzhi7=0;
                    case 2
                        koufenzhi7=0;
                    case 3
                        koufenzhi7=0;
                    case 4
                        koufenzhi7=0;
                    case 5
                        koufenzhi7=0;
                end
                switch str2double(get(handles.zaihaizhi8,'String'))
                    case 1
                        koufenzhi8=0;
                    case 2
                        koufenzhi8=0;
                    case 3
                        koufenzhi8=0;
                    case 4
                        koufenzhi8=0;
                    case 5
                        koufenzhi8=0;
                end
                switch str2double(get(handles.zaihaizhi9,'String'))
                    case 1
                        koufenzhi9=0;
                    case 2
                        koufenzhi9=0;
                    case 3
                        koufenzhi9=0;
                    case 4
                        koufenzhi9=0;
                    case 5
                        koufenzhi9=0;
                end
                switch str2double(get(handles.zaihaizhi10,'String'))
                    case 1
                        koufenzhi10=0;
                    case 2
                        koufenzhi10=0;
                    case 3
                        koufenzhi10=0;
                    case 4
                        koufenzhi10=0;
                    case 5
                        koufenzhi10=0;
                end
                switch str2double(get(handles.zaihaizhi11,'String'))
                    case 1
                        koufenzhi11=0;
                    case 2
                        koufenzhi11=0;
                    case 3
                        koufenzhi11=0;
                    case 4
                        koufenzhi11=0;
                    case 5
                        koufenzhi11=0;
                end
                switch str2double(get(handles.zaihaizhi12,'String'))
                    case 1
                        koufenzhi12=0;
                    case 2
                        koufenzhi12=0;
                    case 3
                        koufenzhi12=0;
                    case 4
                        koufenzhi12=0;
                    case 5
                        koufenzhi12=0;
                end
                           %���ˡ����� ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                            
                            
            case 6%����ˮϵͳ
                %����ˮϵͳ
                switch str2double(get(handles.zaihaizhi1,'String'))
                    case 1
                        koufenzhi1=0;
                    case 2
                        koufenzhi1=25;
                    case 3
                        koufenzhi1=40;
                    case 4
                        koufenzhi1=50;
                    case 5
                        koufenzhi1=0;
                end
                switch str2double(get(handles.zaihaizhi2,'String'))
                    case 1
                        koufenzhi2=0;
                    case 2
                        koufenzhi2=20;
                    case 3
                        koufenzhi2=35;
                    case 4
                        koufenzhi2=0;
                    case 5
                        koufenzhi2=0;
                end
                switch str2double(get(handles.zaihaizhi3,'String'))
                    case 1
                        koufenzhi3=0;
                    case 2
                        koufenzhi3=0;
                    case 3
                        koufenzhi3=0;
                    case 4
                        koufenzhi3=0;
                    case 5
                        koufenzhi3=0;
                end
                switch str2double(get(handles.zaihaizhi4,'String'))
                    case 1
                        koufenzhi4=0;
                    case 2
                        koufenzhi4=0;
                    case 3
                        koufenzhi4=0;
                    case 4
                        koufenzhi4=0;
                    case 5
                        koufenzhi4=0;
                end
                switch str2double(get(handles.zaihaizhi5,'String'))
                    case 1
                        koufenzhi5=0;
                    case 2
                        koufenzhi5=0;
                    case 3
                        koufenzhi5=0;
                    case 4
                        koufenzhi5=0;
                    case 5
                        koufenzhi5=0;
                end
                switch str2double(get(handles.zaihaizhi6,'String'))
                    case 1
                        koufenzhi6=0;
                    case 2
                        koufenzhi6=0;
                    case 3
                        koufenzhi6=0;
                    case 4
                        koufenzhi6=0;
                    case 5
                        koufenzhi6=0;
                end
                switch str2double(get(handles.zaihaizhi7,'String'))
                    case 1
                        koufenzhi7=0;
                    case 2
                        koufenzhi7=0;
                    case 3
                        koufenzhi7=0;
                    case 4
                        koufenzhi7=0;
                    case 5
                        koufenzhi7=0;
                end
                switch str2double(get(handles.zaihaizhi8,'String'))
                    case 1
                        koufenzhi8=0;
                    case 2
                        koufenzhi8=0;
                    case 3
                        koufenzhi8=0;
                    case 4
                        koufenzhi8=0;
                    case 5
                        koufenzhi8=0;
                end
                switch str2double(get(handles.zaihaizhi9,'String'))
                    case 1
                        koufenzhi9=0;
                    case 2
                        koufenzhi9=0;
                    case 3
                        koufenzhi9=0;
                    case 4
                        koufenzhi9=0;
                    case 5
                        koufenzhi9=0;
                end
                switch str2double(get(handles.zaihaizhi10,'String'))
                    case 1
                        koufenzhi10=0;
                    case 2
                        koufenzhi10=0;
                    case 3
                        koufenzhi10=0;
                    case 4
                        koufenzhi10=0;
                    case 5
                        koufenzhi10=0;
                end
                switch str2double(get(handles.zaihaizhi11,'String'))
                    case 1
                        koufenzhi11=0;
                    case 2
                        koufenzhi11=0;
                    case 3
                        koufenzhi11=0;
                    case 4
                        koufenzhi11=0;
                    case 5
                        koufenzhi11=0;
                end
                switch str2double(get(handles.zaihaizhi12,'String'))
                    case 1
                        koufenzhi12=0;
                    case 2
                        koufenzhi12=0;
                    case 3
                        koufenzhi12=0;
                    case 4
                        koufenzhi12=0;
                    case 5
                        koufenzhi12=0;
                end
                            %����ˮϵͳ ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;
                            
            case 7%������־
                %������־
                switch str2double(get(handles.zaihaizhi1,'String'))
                    case 1
                        koufenzhi1=0;
                    case 2
                        koufenzhi1=25;
                    case 3
                        koufenzhi1=40;
                    case 4
                        koufenzhi1=50;
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
                        koufenzhi3=20;
                    case 3
                        koufenzhi3=35;
                    case 4
                        koufenzhi3=0;
                    case 5
                        koufenzhi3=0;
                end
                switch str2double(get(handles.zaihaizhi4,'String'))
                    case 1
                        koufenzhi4=0;
                    case 2
                        koufenzhi4=0;
                    case 3
                        koufenzhi4=0;
                    case 4
                        koufenzhi4=0;
                    case 5
                        koufenzhi4=0;
                end
                switch str2double(get(handles.zaihaizhi5,'String'))
                    case 1
                        koufenzhi5=0;
                    case 2
                        koufenzhi5=0;
                    case 3
                        koufenzhi5=0;
                    case 4
                        koufenzhi5=0;
                    case 5
                        koufenzhi5=0;
                end
                switch str2double(get(handles.zaihaizhi6,'String'))
                    case 1
                        koufenzhi6=0;
                    case 2
                        koufenzhi6=0;
                    case 3
                        koufenzhi6=0;
                    case 4
                        koufenzhi6=0;
                    case 5
                        koufenzhi6=0;
                end
                switch str2double(get(handles.zaihaizhi7,'String'))
                    case 1
                        koufenzhi7=0;
                    case 2
                        koufenzhi7=0;
                    case 3
                        koufenzhi7=0;
                    case 4
                        koufenzhi7=0;
                    case 5
                        koufenzhi7=0;
                end
                switch str2double(get(handles.zaihaizhi8,'String'))
                    case 1
                        koufenzhi8=0;
                    case 2
                        koufenzhi8=0;
                    case 3
                        koufenzhi8=0;
                    case 4
                        koufenzhi8=0;
                    case 5
                        koufenzhi8=0;
                end
                switch str2double(get(handles.zaihaizhi9,'String'))
                    case 1
                        koufenzhi9=0;
                    case 2
                        koufenzhi9=0;
                    case 3
                        koufenzhi9=0;
                    case 4
                        koufenzhi9=0;
                    case 5
                        koufenzhi9=0;
                end
                switch str2double(get(handles.zaihaizhi10,'String'))
                    case 1
                        koufenzhi10=0;
                    case 2
                        koufenzhi10=0;
                    case 3
                        koufenzhi10=0;
                    case 4
                        koufenzhi10=0;
                    case 5
                        koufenzhi10=0;
                end
                switch str2double(get(handles.zaihaizhi11,'String'))
                    case 1
                        koufenzhi11=0;
                    case 2
                        koufenzhi11=0;
                    case 3
                        koufenzhi11=0;
                    case 4
                        koufenzhi11=0;
                    case 5
                        koufenzhi11=0;
                end
                switch str2double(get(handles.zaihaizhi12,'String'))
                    case 1
                        koufenzhi12=0;
                    case 2
                        koufenzhi12=0;
                    case 3
                        koufenzhi12=0;
                    case 4
                        koufenzhi12=0;
                    case 5
                        koufenzhi12=0;
                end
                            %��������־ ��12���ֺ��Ž�һ��������
                            a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
                            %��������н�������
                            b=sort(a,'descend');
                            %ȡ������������ֵ
                            u1=b(1);

                            %�齨������
                            u=zeros(1,12);
                            %��Ϊ������ĵ�һ��
                            u(1)=u1;
                            % ������������Ԫ��
                            for i=2:12
                                u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
                            end  
                            %һ�������ĵ÷�ֵ
                            PMCI=100-sum(u(:));
                            %�ж�PMCI
                            if PMCI<=0
                                PMCI=0;
                            end
                            % set(handles.pingfen,'string',PMCI)    
                            %�������鱣�����й�������
                            % n = str2double(get(handles.edit2,'String'));
                            global p;
                            % p=zeros(1,n);
                            %���÷�ֵ�������
                            i=get(handles.popupmenu4,'value');
                            p(i)=PMCI;

        end
        
                
                                              
                    
        
        
end
                            
                    
                    
                   

% %�ϲ����ع��� ��12���ֺ��Ž�һ��������
% a=[koufenzhi1,koufenzhi2,koufenzhi3,koufenzhi4,koufenzhi5,koufenzhi6,koufenzhi7,koufenzhi8,koufenzhi9,koufenzhi10,koufenzhi11,koufenzhi12];
% %��������н�������
% b=sort(a,'descend');
% %ȡ������������ֵ
% u1=b(1);
% 
% %�齨������
% u=zeros(1,12);
% %��Ϊ������ĵ�һ��
% u(1)=u1;
% % ������������Ԫ��
% for i=2:12
%     u(i)=(b(i)/(100*sqrt(i)))*(100-sum(u(1:(i-1))));
% end  
% %һ�������ĵ÷�ֵ
% PMCI=100-sum(u(:));
% %�ж�PMCI
% if PMCI<=0
%     PMCI=0;
% end
% % set(handles.pingfen,'string',PMCI)    
% %�������鱣�����й�������
% % n = str2double(get(handles.edit2,'String'));
% global p;
% % p=zeros(1,n);
% %���÷�ֵ�������
% i=get(handles.popupmenu4,'value');
% p(i)=PMCI;

% %���
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
%tֵ
global t;
tValue = str2double(get(handles.edit2,'String'));
if tValue==1
    t = inf;
elseif tValue==2
    t = 10;
elseif tValue==3
    t = 9.7;
elseif tValue==4
    t = 9.5;
elseif tValue==5
    t = 9.2;
elseif tValue==6
    t = 8.9;
elseif tValue==7
    t = 8.7;
elseif tValue==8
    t = 8.5;
elseif tValue==9
    t = 8.3;
elseif tValue==10
    t = 8.1;
elseif tValue==11
    t = 7.9;
elseif tValue==12
    t = 7.7;
elseif tValue==13
    t = 7.5;
elseif tValue==14
    t = 7.3;
elseif tValue==15
    t = 7.2;
elseif tValue==16
    t = 7.08;
elseif tValue==17
    t = 6.96;
elseif tValue==18
    t = 6.84;
elseif tValue==19
    t = 96.72;
elseif tValue==20
    t = 6.6;
elseif tValue==21
    t = 6.48;
elseif tValue==22
    t = 6.36;
elseif tValue==23
    t = 6.24;
elseif tValue==24
    t = 6.12;
elseif tValue==25
    t = 6.00;
elseif tValue==26
    t = 5.88;
elseif tValue==27
    t = 5.76;
elseif tValue==28
    t = 5.64;
elseif tValue==29
    t = 5.52;
elseif tValue==30
    t = 5.40;
elseif tValue>30 && tValue<50
    t = 5.4-(tValue-30)*0.05;
elseif tValue==50
    t = 4.4;
elseif tValue>50 && tValue<90
    t = 4.4-(tValue-50)*0.04;
elseif tValue==90
    t = 2.8;
elseif tValue>90 && tValue<100
    t = 2.8-(tValue-90)*0.03;
elseif tValue==100;
    t = 2.5;
elseif tValue>100 && tValue<200
    t = 2.5-(tValue-30)*0.02;
elseif tValue>200
    t = 2.3;
end


%��������
global p;
psort=sort(p);
pmin=psort(1);
n= str2double(get(handles.edit2,'String'));
PCCI=sum(p(:))/n-(100-pmin)/t;
set(handles.pingfen,'string',PCCI)    
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function buweidefen_Callback(hObject, eventdata, handles)
% hObject    handle to buweidefen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of buweidefen as text
%        str2double(get(hObject,'String')) returns contents of buweidefen as a double


% --- Executes during object creation, after setting all properties.
function buweidefen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to buweidefen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function zongtidefen_Callback(hObject, eventdata, handles)
% hObject    handle to zongtidefen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zongtidefen as text
%        str2double(get(hObject,'String')) returns contents of zongtidefen as a double


% --- Executes during object creation, after setting all properties.
function zongtidefen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zongtidefen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
