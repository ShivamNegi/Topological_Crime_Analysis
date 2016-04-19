function varargout = bar3d(varargin)
% BAR3D MATLAB code for bar3d.fig
%      BAR3D, by itself, creates a new BAR3D or raises the existing
%      singleton*.
%
%      H = BAR3D returns the handle to a new BAR3D or the handle to
%      the existing singleton*.
%
%      BAR3D('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BAR3D.M with the given input arguments.
%
%      BAR3D('Property','Value',...) creates a new BAR3D or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bar3d_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bar3d_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bar3d

% Last Modified by GUIDE v2.5 18-Apr-2016 20:02:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bar3d_OpeningFcn, ...
                   'gui_OutputFcn',  @bar3d_OutputFcn, ...
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


% --- Executes just before bar3d is made visible.
function bar3d_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bar3d (see VARARGIN)

% Choose default command line output for bar3d
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bar3d wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bar3d_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
run('bars3d.m');
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
I=imread('/home/negi/Documents/Topological_Crime_Analysis/Matlab_gui/crumpled_map_of_india.jpg');

hi = imagesc(I)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
