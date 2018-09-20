import { Component, OnInit } from '@angular/core';
import { Message } from 'primeng/api';
import { HubConnection, HubConnectionBuilder } from '@aspnet/signalr';

@Component({
    selector: 'message-receiver',
    templateUrl: './message-receiver.component.html',
    styleUrls: ['./message-receiver.component.css']
})

// cerner_2^5_2018
export class MessageReceiverComponent implements OnInit {
    msgs: Message[] = [];
    private _hubConnection: HubConnection;

    ngOnInit(): void {
        this._hubConnection = new HubConnectionBuilder().withUrl('http://localhost:45678/chathub').build();

        this._hubConnection
            .start()
            .then(() => console.log('Connection to SignalR hub started!'))
            .catch(err => console.log(err.toString()));

        this._hubConnection.on('ReceiveMessage', (type: string, message: string) => {
            this.msgs.push({ severity: type, summary: message });
        });
    }
}