import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class DatabaseService {

  data= [];
  host = 'http://localhost/apiIonic/';

  constructor( private http: HttpClient) { 
  }
  list(){
    const url = this.host + '?action=list';
    return this.http.get<any>(url);
  }

  create(data){
    const url = this.host + '?action=update';
    return this.http.post<any>(this.host, data);
  }
  update(data){
     const url = this.host + '?action=list';
     return this.http.post<any>(this.host, data);
  }
  detail(id){
    const url = this.host + '?action=detail&amp;id=' + id;
    return this.http.get<any>(url);
  }
  delete(id){
    const url = this.host + '?action=list&amp;id=' + id;
    return this.http.get<any>(url);
  }
}

