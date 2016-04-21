function varargout = PopulationPercentageMaps(varargin)
% POPULATIONPERCENTAGEMAPS MATLAB code for PopulationPercentageMaps.fig
%      POPULATIONPERCENTAGEMAPS, by itself, creates a new POPULATIONPERCENTAGEMAPS or raises the existing
%      singleton*.
%
%      H = POPULATIONPERCENTAGEMAPS returns the handle to a new POPULATIONPERCENTAGEMAPS or the handle to
%      the existing singleton*.
%
%      POPULATIONPERCENTAGEMAPS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in POPULATIONPERCENTAGEMAPS.M with the given input arguments.
%
%      POPULATIONPERCENTAGEMAPS('Property','Value',...) creates a new POPULATIONPERCENTAGEMAPS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PopulationPercentageMaps_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PopulationPercentageMaps_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PopulationPercentageMaps

% Last Modified by GUIDE v2.5 21-Apr-2016 23:48:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PopulationPercentageMaps_OpeningFcn, ...
                   'gui_OutputFcn',  @PopulationPercentageMaps_OutputFcn, ...
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


% --- Executes just before PopulationPercentageMaps is made visible.
function PopulationPercentageMaps_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PopulationPercentageMaps (see VARARGIN)

% Choose default command line output for PopulationPercentageMaps
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PopulationPercentageMaps wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PopulationPercentageMaps_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
year = get(handles.popupmenu1, 'value');
if year == 1
    year = 2001;
else
    year = 2011;
end;    
policeMaps(type);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
