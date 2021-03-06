function varargout = LiteracyBarGraphs(varargin)
% LITERACYBARGRAPHS MATLAB code for LiteracyBarGraphs.fig
%      LITERACYBARGRAPHS, by itself, creates a new LITERACYBARGRAPHS or raises the existing
%      singleton*.
%
%      H = LITERACYBARGRAPHS returns the handle to a new LITERACYBARGRAPHS or the handle to
%      the existing singleton*.
%
%      LITERACYBARGRAPHS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LITERACYBARGRAPHS.M with the given input arguments.
%
%      LITERACYBARGRAPHS('Property','Value',...) creates a new LITERACYBARGRAPHS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LiteracyBarGraphs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LiteracyBarGraphs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LiteracyBarGraphs

% Last Modified by GUIDE v2.5 21-Apr-2016 22:58:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LiteracyBarGraphs_OpeningFcn, ...
                   'gui_OutputFcn',  @LiteracyBarGraphs_OutputFcn, ...
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


% --- Executes just before LiteracyBarGraphs is made visible.
function LiteracyBarGraphs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LiteracyBarGraphs (see VARARGIN)

% Choose default command line output for LiteracyBarGraphs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LiteracyBarGraphs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LiteracyBarGraphs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
state = get(handles.listbox1, 'value');
literacyplots(state);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
clf('reset');
close;
openfig('Mainmenu.fig');
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
I=imread('/home/negi/Documents/Topological_Crime_Analysis/Matlab_gui/crumpled_map_of_india.jpg');
hi = imagesc(I);
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
