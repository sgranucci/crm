<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/', function () {
    return redirect('admin/login');
});

Route::get('admin/tickets/prox_estado/{id}', 'ProximaAccionController@proxestado');

Route::get('admin/main_dashboard', 'MainDashBoardController@Dashboard')->name('dash');
Route::post('admin/busqueda', 'MainDashBoardController@desktopBusqueda');

Route::get('reporte_leads', 'AdminLeads1Controller@reporte_leads')->name('reporte_leads');
Route::post('report_lead_cantidad', 'AdminLeads1Controller@reporte_lead_cantidad')->name('report_lead_cantidad');
Route::post('report_lead_export', 'AdminLeads1Controller@report_lead_export')->name('report_lead_export');

Route::get('reporte_contacto', 'AdminLeads1Controller@reporte_contacto')->name('reporte_contacto');
Route::post('report_contacto_cantidad', 'AdminLeads1Controller@reporte_contacto_cantidad')->name('report_contacto_cantidad');
Route::post('report_contacto_export', 'AdminLeads1Controller@report_contacto_export')->name('report_contacto_export');

Route::get('admin/calendario', 'CalendarioController@index')->name('calendario');
Route::get('admin/filtraCalendario', 'CalendarioController@indexFiltrado')->name('calendarioFiltrado');
Route::get('admin/calendarioReuniones', 'CalendarioController@calendarioReuniones')->name('calendarioReuniones');

Route::get('admin/addTicketManual/{id}','AdminTicketsController@addTicketManual')->name('addTicketManual');

