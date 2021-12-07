function varargout = ckt1(varargin)
% CKT1 MATLAB code for ckt1.fig
%      CKT1, by itself, creates a new CKT1 or raises the existing
%      singleton*.
%
%      H = CKT1 returns the handle to a new CKT1 or the handle to
%      the existing singleton*.
%
%      CKT1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CKT1.M with the given input arguments.
%
%      CKT1('Property','Value',...) creates a new CKT1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ckt1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ckt1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ckt1

% Last Modified by GUIDE v2.5 05-Sep-2019 05:10:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ckt1_OpeningFcn, ...
                   'gui_OutputFcn',  @ckt1_OutputFcn, ...
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


% --- Executes just before ckt1 is made visible.
function ckt1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ckt1 (see VARARGIN)

% Choose default command line output for ckt1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
a=imread('1.jpg');
axes(handles.a);
imshow(a);
[y fs]=audioread('you-selected-number-1.wav');
sound(y,fs)


% UIWAIT makes ckt1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ckt1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in simulate.
function simulate_Callback(hObject, eventdata, handles)
% hObject    handle to simulate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




%%%%%all codes here%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc

v1 = str2num(get(handles.v1, 'String'))
if(isempty(v1))
    v1=0;
end

i1 = str2num(get(handles.i1, 'String'));
if(isempty(i1))
    i1=0;
end

r1 = str2num(get(handles.r1, 'String'));
if(isempty(r1))
    r1=0;
end


v2=str2num(get(handles.v2,'string'));
if(isempty(v2))
    v2=0;
end


i2 = str2num(get(handles.i2, 'String'));
if(isempty(i2))
    i2=0;
end

r2 = str2num(get(handles.r2, 'String'));
if(isempty(r2))
    r2=0;
end


v3 = str2num(get(handles.v3, 'String'));
if(isempty(v3))
    v3=0;
end


i3 = str2num(get(handles.i3, 'String'));
if(isempty(i3))
    i3=0;
end

r3 = str2num(get(handles.r3, 'String'));
if(isempty(r3))
    r3=0;
end


v4 = str2num(get(handles.v4, 'String'));
if(isempty(v4))
    v4=0;
end

i4 = str2num(get(handles.i4, 'String'));
if(isempty(i4))
    i4=0;
end

r4 = str2num(get(handles.r4, 'String'));
if(isempty(r4))
    r4=0;
end


v5 = str2num(get(handles.v5, 'String'));
if(isempty(v5))
    v5=0;
end

i5 = str2num(get(handles.i5, 'String'));
if(isempty(i5))
    i5=0;
end

r5 = str2num(get(handles.r5, 'String'));
if(isempty(r5))
    r5=0;
end

v6 = str2num(get(handles.v6, 'String'));
if(isempty(v6))
    v6=0;
end

i6 = str2num(get(handles.i6, 'String'));
if(isempty(i6))
    i6=0;
end

r6 = str2num(get(handles.r6, 'String'));
if(isempty(r6))
    r6=0;
end


v7 = str2num(get(handles.v7, 'String'));
if(isempty(v7))
    v7=0;
end

i7 = str2num(get(handles.i7, 'String'));
if(isempty(i7))
    i7=0;
end

r7 = str2num(get(handles.r7, 'String'));
if(isempty(r7))
    r7=0;
end

v8 = str2num(get(handles.v8, 'String'));
if(isempty(v8))
    v8=0;
end

i8 = str2num(get(handles.i8, 'String'));
if(isempty(i8))
    i8=0;
end

r8 = str2num(get(handles.r8, 'String'));
if(isempty(r8))
    r8=0;
end

v9 = str2num(get(handles.v9, 'String'));
if(isempty(v9))
    v9=0;
end

i9 = str2num(get(handles.i9, 'String'));
if(isempty(i9))
    i9=0;
end

r9 = str2num(get(handles.r9, 'String'));
if(isempty(r9))
    r9=0;
end



%%%%%%%%%ckt solve code here%%%%%%%%%%%%



i=i1+i2+i3+i4+i5+i6+i7+i8+i9;

box1= [   r1+r2 -r2             0           0       ;...
          -r2   r2+r3+r4+r5    -r5          0       ;...
          0     -r5             r5+r6+r7+r8 -r8     ;...
          0     0               -r8         r8+r9   ];
box2= [   v1-v2 ;  v2+v4-v3-v5    ;  v5+v7-v6-v8    ;  v8-v9 ];


global box3_1

if i==0
    box3_1 = inv(box1)*box2
else
    if i1~=0
        [box1,box2] = notsupermesh(1,i1,box1,box2);
    end
    if i3~=0
        [box1,box2] = notsupermesh(2,-i3,box1,box2);
    end
    if i4~=0
        [box1,box2] = notsupermesh(2,i4,box1,box2);
    end
    if i6~=0
        [box1,box2] = notsupermesh(3,-i6,box1,box2);
    end
    if i7~=0
        [box1,box2] = notsupermesh(3,i7,box1,box2);
    end
    if i9~=0
        [box1,box2] = notsupermesh(4,-i9,box1,box2);
    end
    
    if i2~=0
        [box1,box2] = supermesh(2,1,i2,box1,box2);
    end
    if i5~=0
        [box1,box2] = supermesh(3,2,i5,box1,box2);
    end
    if i8~=0
        [box1,box2] = supermesh(4,3,i8,box1,box2);
    end
    
    
    box3_1 = inv(box1)*box2
end


[y fs]=audioread('aaaa.wav');
sound(y,fs)

ckt1_output










function v1_Callback(hObject, eventdata, handles)
% hObject    handle to v1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v1 as text
%        str2double(get(hObject,'String')) returns contents of v1 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function v1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i1_Callback(hObject, eventdata, handles)
% hObject    handle to i1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i1 as text
%        str2double(get(hObject,'String')) returns contents of i1 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function i1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r1_Callback(hObject, eventdata, handles)
% hObject    handle to r1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r1 as text
%        str2double(get(hObject,'String')) returns contents of r1 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function r1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v2_Callback(hObject, eventdata, handles)
% hObject    handle to v2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v2 as text
%        str2double(get(hObject,'String')) returns contents of v2 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function v2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i2_Callback(hObject, eventdata, handles)
% hObject    handle to i2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i2 as text
%        str2double(get(hObject,'String')) returns contents of i2 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function i2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r2_Callback(hObject, eventdata, handles)
% hObject    handle to r2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r2 as text
%        str2double(get(hObject,'String')) returns contents of r2 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function r2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v3_Callback(hObject, eventdata, handles)
% hObject    handle to v3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v3 as text
%        str2double(get(hObject,'String')) returns contents of v3 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function v3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i3_Callback(hObject, eventdata, handles)
% hObject    handle to i3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i3 as text
%        str2double(get(hObject,'String')) returns contents of i3 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function i3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r3_Callback(hObject, eventdata, handles)
% hObject    handle to r3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r3 as text
%        str2double(get(hObject,'String')) returns contents of r3 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function r3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v4_Callback(hObject, eventdata, handles)
% hObject    handle to v4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v4 as text
%        str2double(get(hObject,'String')) returns contents of v4 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function v4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i4_Callback(hObject, eventdata, handles)
% hObject    handle to i4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i4 as text
%        str2double(get(hObject,'String')) returns contents of i4 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function i4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r4_Callback(hObject, eventdata, handles)
% hObject    handle to r4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r4 as text
%        str2double(get(hObject,'String')) returns contents of r4 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function r4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v5_Callback(hObject, eventdata, handles)
% hObject    handle to v5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v5 as text
%        str2double(get(hObject,'String')) returns contents of v5 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function v5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i5_Callback(hObject, eventdata, handles)
% hObject    handle to i5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i5 as text
%        str2double(get(hObject,'String')) returns contents of i5 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function i5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r5_Callback(hObject, eventdata, handles)
% hObject    handle to r5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r5 as text
%        str2double(get(hObject,'String')) returns contents of r5 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function r5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v6_Callback(hObject, eventdata, handles)
% hObject    handle to v6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v6 as text
%        str2double(get(hObject,'String')) returns contents of v6 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function v6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i6_Callback(hObject, eventdata, handles)
% hObject    handle to i6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i6 as text
%        str2double(get(hObject,'String')) returns contents of i6 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function i6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r6_Callback(hObject, eventdata, handles)
% hObject    handle to r6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r6 as text
%        str2double(get(hObject,'String')) returns contents of r6 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function r6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v8_Callback(hObject, eventdata, handles)
% hObject    handle to v8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v8 as text
%        str2double(get(hObject,'String')) returns contents of v8 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function v8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i8_Callback(hObject, eventdata, handles)
% hObject    handle to i8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i8 as text
%        str2double(get(hObject,'String')) returns contents of i8 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function i8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r8_Callback(hObject, eventdata, handles)
% hObject    handle to r8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r8 as text
%        str2double(get(hObject,'String')) returns contents of r8 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function r8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v7_Callback(hObject, eventdata, handles)
% hObject    handle to v7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v7 as text
%        str2double(get(hObject,'String')) returns contents of v7 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function v7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i7_Callback(hObject, eventdata, handles)
% hObject    handle to i7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i7 as text
%        str2double(get(hObject,'String')) returns contents of i7 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function i7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r7_Callback(hObject, eventdata, handles)
% hObject    handle to r7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r7 as text
%        str2double(get(hObject,'String')) returns contents of r7 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function r7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v9_Callback(hObject, eventdata, handles)
% hObject    handle to v9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v9 as text
%        str2double(get(hObject,'String')) returns contents of v9 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function v9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i9_Callback(hObject, eventdata, handles)
% hObject    handle to i9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i9 as text
%        str2double(get(hObject,'String')) returns contents of i9 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function i9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r9_Callback(hObject, eventdata, handles)
% hObject    handle to r9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r9 as text
%        str2double(get(hObject,'String')) returns contents of r9 as a double
input=str2num(get(hObject,'string'));
if(isempty(input))
    set(hObject,'string','0');
end

% --- Executes during object creation, after setting all properties.
function r9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
