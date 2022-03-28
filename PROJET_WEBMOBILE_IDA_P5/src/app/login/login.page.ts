import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {
  username: string;
  password: string;

  constructor(private navCtrl: NavController) { }

  ngOnInit() {
  }

  login(){
    console.log("username: " + this.username);
    console.log("password: " + this.password);
  }
}
