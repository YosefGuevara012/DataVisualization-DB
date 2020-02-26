function varargout = DriverBehaviour(varargin)
% DRIVERBEHAVIOUR MATLAB code for DriverBehaviour.fig
%      DRIVERBEHAVIOUR, by itself, creates a new DRIVERBEHAVIOUR or raises the existing
%      singleton*.
%
%      H = DRIVERBEHAVIOUR returns the handle to a new DRIVERBEHAVIOUR or the handle to
%      the existing singleton*.
%
%      DRIVERBEHAVIOUR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DRIVERBEHAVIOUR.M with the given input arguments.
%
%      DRIVERBEHAVIOUR('Property','Value',...) creates a new DRIVERBEHAVIOUR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DriverBehaviour_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DriverBehaviour_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DriverBehaviour

% Last Modified by GUIDE v2.5 26-Feb-2020 00:12:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DriverBehaviour_OpeningFcn, ...
                   'gui_OutputFcn',  @DriverBehaviour_OutputFcn, ...
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


% --- Executes just before DriverBehaviour is made visible.
function DriverBehaviour_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DriverBehaviour (see VARARGIN)

% Choose default command line output for DriverBehaviour
handles.output = hObject;
% configuracion inicial

%configuracion de sliders
set(handles.slider_acceleracion,'Value',5)
set(handles.aceleracion_text,'String',5)
set(handles.slider_frenado,'Value',5)
set(handles.frenado_text,'String',5)
set(handles.slider_giro,'Value',5)
set(handles.giro_text,'String',5)
set(handles.slider_accidente,'Value',10000)
set(handles.accidente_text,'String',10000)
set(handles.slider_ralenti,'Value',1)
set(handles.ralenti_text,'String',1)
set(handles.slider_velocidad,'Value',2)
set(handles.velocidad_text,'String',2)
set(handles.slider_pts_max_per,'Value',1100)
set(handles.puntos_max_text,'String',1100)
set(handles.slider_prom_h_cond,'Value',29)
set(handles.horas_conducidas_text,'String',29)
set(handles.slider_prom_km_cond,'Value',950)
set(handles.kilometros_conducidos_text,'String',950)
% configuracion popupmenus
set(handles.tiempo_conducido,'Enable','off')
set(handles.distancia_fija,'Enable','off')

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DriverBehaviour wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DriverBehaviour_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider_pts_max_per_Callback(hObject, eventdata, handles)
% hObject    handle to slider_pts_max_per (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.puntos_max_text,'String',round(get(hObject,'Value'),0))
set(handles.puntos_max_text,'String',round(get(hObject,'Value'),0))

% --- Executes during object creation, after setting all properties.
function slider_pts_max_per_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_pts_max_per (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_prom_h_cond_Callback(hObject, eventdata, handles)
% hObject    handle to slider_prom_h_cond (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.horas_conducidas_text,'String',round(get(hObject,'Value'),0))

% --- Executes during object creation, after setting all properties.
function slider_prom_h_cond_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_prom_h_cond (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_prom_km_cond_Callback(hObject, eventdata, handles)
% hObject    handle to slider_prom_km_cond (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.kilometros_conducidos_text,'String',round(get(hObject,'Value'),0))

% --- Executes during object creation, after setting all properties.
function slider_prom_km_cond_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_prom_km_cond (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_acceleracion_Callback(hObject, eventdata, handles)
% hObject    handle to slider_acceleracion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.aceleracion_text,'String',round(get(hObject,'Value'),0))

% --- Executes during object creation, after setting all properties.
function slider_acceleracion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_acceleracion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_frenado_Callback(hObject, eventdata, handles)
% hObject    handle to slider_frenado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.frenado_text,'String',round(get(hObject,'Value'),0))

% --- Executes during object creation, after setting all properties.
function slider_frenado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_frenado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_giro_Callback(hObject, eventdata, handles)
% hObject    handle to slider_giro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.giro_text,'String',round(get(hObject,'Value'),0))

% --- Executes during object creation, after setting all properties.
function slider_giro_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_giro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_accidente_Callback(hObject, eventdata, handles)
% hObject    handle to slider_accidente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.accidente_text,'String',round(get(hObject,'Value'),0))

% --- Executes during object creation, after setting all properties.
function slider_accidente_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_accidente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_ralenti_Callback(hObject, eventdata, handles)
% hObject    handle to slider_ralenti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.ralenti_text,'String',round(get(hObject,'Value'),0))

% --- Executes during object creation, after setting all properties.
function slider_ralenti_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_ralenti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_velocidad_Callback(hObject, eventdata, handles)
% hObject    handle to slider_velocidad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.velocidad_text,'String',round(get(hObject,'Value'),0))

% --- Executes during object creation, after setting all properties.
function slider_velocidad_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_velocidad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.ralenti_max_text,'String',round(get(hObject,'Value'),0))

% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider10_Callback(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.velocidad_max_text,'String',round(get(hObject,'Value'),0))

% --- Executes during object creation, after setting all properties.
function slider10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function velocidad_puntos_Callback(hObject, eventdata, handles)
% hObject    handle to velocidad_puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of velocidad_puntos as text
%        str2double(get(hObject,'String')) returns contents of velocidad_puntos as a double


% --- Executes during object creation, after setting all properties.
function velocidad_puntos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to velocidad_puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function acceleracion_puntos_Callback(hObject, eventdata, handles)
% hObject    handle to acceleracion_puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of acceleracion_puntos as text
%        str2double(get(hObject,'String')) returns contents of acceleracion_puntos as a double


% --- Executes during object creation, after setting all properties.
function acceleracion_puntos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to acceleracion_puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function frenado_puntos_Callback(hObject, eventdata, handles)
% hObject    handle to frenado_puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frenado_puntos as text
%        str2double(get(hObject,'String')) returns contents of frenado_puntos as a double


% --- Executes during object creation, after setting all properties.
function frenado_puntos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frenado_puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function giro_puntos_Callback(hObject, eventdata, handles)
% hObject    handle to giro_puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of giro_puntos as text
%        str2double(get(hObject,'String')) returns contents of giro_puntos as a double


% --- Executes during object creation, after setting all properties.
function giro_puntos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to giro_puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function accidente_puntos_Callback(hObject, eventdata, handles)
% hObject    handle to accidente_puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of accidente_puntos as text
%        str2double(get(hObject,'String')) returns contents of accidente_puntos as a double


% --- Executes during object creation, after setting all properties.
function accidente_puntos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to accidente_puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ralenti_puntos_Callback(hObject, eventdata, handles)
% hObject    handle to ralenti_puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ralenti_puntos as text
%        str2double(get(hObject,'String')) returns contents of ralenti_puntos as a double


% --- Executes during object creation, after setting all properties.
function ralenti_puntos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ralenti_puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in valores_base.
function valores_base_Callback(hObject, eventdata, handles)
% hObject    handle to valores_base (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns valores_base contents as cell array
%        contents{get(hObject,'Value')} returns selected item from valores_base

if get(hObject,'Value') == 1
   set(handles.distancia_del_viaje,'Enable','on')
   set(handles.tiempo_conducido,'Enable','off')
elseif get(hObject,'Value') == 2
   set(handles.distancia_del_viaje,'Enable','off')
   set(handles.tiempo_conducido,'Enable','on')
end


% --- Executes during object creation, after setting all properties.
function valores_base_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valores_base (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function distancia_del_viaje_Callback(hObject, eventdata, handles)
% hObject    handle to distancia_del_viaje (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of distancia_del_viaje as text
%        str2double(get(hObject,'String')) returns contents of distancia_del_viaje as a double


% --- Executes during object creation, after setting all properties.
function distancia_del_viaje_CreateFcn(hObject, eventdata, handles)
% hObject    handle to distancia_del_viaje (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tiempo_conducido_Callback(hObject, eventdata, handles)
% hObject    handle to tiempo_conducido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tiempo_conducido as text
%        str2double(get(hObject,'String')) returns contents of tiempo_conducido as a double


% --- Executes during object creation, after setting all properties.
function tiempo_conducido_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tiempo_conducido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in calcular.
function calcular_Callback(hObject, eventdata, handles)
% hObject    handle to calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Calculo del puntaje acumulado
acceleracion_var = str2num(get(handles.aceleracion_text,'String'))*str2num(get(handles.acceleracion_puntos,'String'))
frenado_var = str2num(get(handles.frenado_text,'String'))*str2num(get(handles.frenado_puntos,'String'))
giro_var = str2num(get(handles.giro_text,'String'))*str2num(get(handles.giro_puntos,'String'))
accidente_var = str2num(get(handles.accidente_text,'String'))*str2num(get(handles.accidente_puntos,'String'))
ralenti_var = str2num(get(handles.ralenti_text,'String'))*str2num(get(handles.ralenti_puntos,'String'))
velocidad_var = str2num(get(handles.velocidad_text,'String'))*str2num(get(handles.velocidad_puntos,'String'))
puntaje_total = acceleracion_var + frenado_var + giro_var +accidente_var + ralenti_var + velocidad_var

% Valores de la base
puntos_max_permitidos= str2num(get(handles.puntos_max_text,'String'))
promedio_hr_conducidas= str2num(get(handles.horas_conducidas_text,'String'))
promedio_km_conducidos= str2num(get(handles.kilometros_conducidos_text,'String'))

% Seleccion de valor base
if get(handles.valores_base,'Value') == 1
    coeficiente = puntos_max_permitidos / promedio_km_conducidos
    puntos_max_permitidos_viaje = coeficiente * str2num(get(handles.distancia_del_viaje,'String'))
elseif get(handles.valores_base,'Value') == 2
    coeficiente = puntos_max_permitidos / promedio_hr_conducidas
    puntos_max_permitidos_viaje = coeficiente * str2num(get(handles.tiempo_conducido,'String'))
end  


% Calculo de los resultados
set(handles.pt_max_permitidos_text,'String',puntos_max_permitidos_viaje)

% puntaje_total = 9.05
porcentaje_del_viaje = ((puntos_max_permitidos_viaje - puntaje_total)/puntos_max_permitidos_viaje)*100
estrellas_del_viaje = (porcentaje_del_viaje * 5)/ 100

% Visualizacion de resultados
set(handles.puntaje_total,'String',puntaje_total)
set(handles.porcentaje_resultado,'String',porcentaje_del_viaje)
set(handles.estrellas_resultado,'String',estrellas_del_viaje)


% --- Executes on button press in graficar.
function graficar_Callback(hObject, eventdata, handles)
% hObject    handle to graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Captura de constantes para el coeficiente
puntos_max_permitidos= str2num(get(handles.puntos_max_text,'String'))
promedio_hr_conducidas= str2num(get(handles.horas_conducidas_text,'String'))
promedio_km_conducidos= str2num(get(handles.kilometros_conducidos_text,'String'))

% variable no fija
variable = [0:1:50]
% calculo coeficiente
coeficiente = puntos_max_permitidos/promedio_km_conducidos

% calculo de la grafica
if get(handles.selector_fijos,'Value') == 1
   puntos_max_permitidos_viaje = coeficiente * variable
   puntuacion = (1 - (str2num(get(handles.puntos_fijos,'String'))./puntos_max_permitidos_viaje))*5 
elseif get(handles.selector_fijos,'Value') == 2
   puntos_max_permitidos_viaje = coeficiente * str2num(get(handles.distancia_fija,'String'))
   puntuacion = (1 - (variable / puntos_max_permitidos_viaje))*5  
end


for i = 1:50
    if puntuacion(i) <= 0
       puntuacion(i) = 0
    end    
end   

% paramteros del Axes

axes(handles.axes1)
title('Resultado de la clificacion por estrellas')
xlim([0 50])
ylim([0 5])
ylabel('Estrellas (0-5)')
xlabel('Distancia en km')
grid
plot(variable,puntuacion)



function puntaje_total_Callback(hObject, eventdata, handles)
% hObject    handle to puntaje_total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of puntaje_total as text
%        str2double(get(hObject,'String')) returns contents of puntaje_total as a double


% --- Executes during object creation, after setting all properties.
function puntaje_total_CreateFcn(hObject, eventdata, handles)
% hObject    handle to puntaje_total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function puntos_fijos_Callback(hObject, eventdata, handles)
% hObject    handle to puntos_fijos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of puntos_fijos as text
%        str2double(get(hObject,'String')) returns contents of puntos_fijos as a double


% --- Executes during object creation, after setting all properties.
function puntos_fijos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to puntos_fijos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function distancia_fija_Callback(hObject, eventdata, handles)
% hObject    handle to distancia_fija (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of distancia_fija as text
%        str2double(get(hObject,'String')) returns contents of distancia_fija as a double


% --- Executes during object creation, after setting all properties.
function distancia_fija_CreateFcn(hObject, eventdata, handles)
% hObject    handle to distancia_fija (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider14_Callback(hObject, eventdata, handles)
% hObject    handle to slider14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

set(handles.valores_fijos,'String',round(get(hObject,'Value'),0))
% Captura de constantes para el coeficiente
puntos_max_permitidos= str2num(get(handles.puntos_max_text,'String'))
promedio_hr_conducidas= str2num(get(handles.horas_conducidas_text,'String'))
promedio_km_conducidos= str2num(get(handles.kilometros_conducidos_text,'String'))

coeficiente = puntos_max_permitidos/promedio_km_conducidos
if get(handles.selector_fijos,'Value') == 1
   puntos_max_permitidos_viaje = coeficiente * round(get(hObject,'Value'),0)
   set(handles.pts_max_permitidos_txt,'String',puntos_max_permitidos_viaje)
   puntuacion = (1 - (str2num(get(handles.puntos_fijos,'String'))./puntos_max_permitidos_viaje))*5
   set(handles.resultado_puntuacion,'String',puntuacion)
elseif get(handles.selector_fijos,'Value') == 2
   puntos_max_permitidos_viaje = coeficiente * str2num(get(handles.distancia_fija,'String'))
   set(handles.pts_max_permitidos_txt,'String',puntos_max_permitidos_viaje)
   puntuacion = (1 - (round(get(hObject,'Value'),0) / puntos_max_permitidos_viaje))*5
   set(handles.resultado_puntuacion,'String',puntuacion)
end    


% --- Executes during object creation, after setting all properties.
function slider14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in selector_fijos.
function selector_fijos_Callback(hObject, eventdata, handles)
% hObject    handle to selector_fijos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns selector_fijos contents as cell array
%        contents{get(hObject,'Value')} returns selected item from selector_fijos
if get(hObject,'Value') == 1
    set(handles.unidades,'String','Km')
    set(handles.puntos_fijos,'Enable','on')
    set(handles.distancia_fija,'Enable','off')
elseif get(hObject,'Value') == 2
    set(handles.unidades,'String','Puntos')
    set(handles.distancia_fija,'Enable','on')
    set(handles.puntos_fijos,'Enable','off')
end

% --- Executes during object creation, after setting all properties.
function selector_fijos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to selector_fijos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
