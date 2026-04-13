import { LightningElement,wire } from 'lwc';
import queryAccountsByRevenue from '@salesforce/apex/AccountListControllerLwc.queryAccountsByRevenue';
export default class AccountSearch extends LightningElement {
    annualRevenue =null;
    handleChange(event) {
        this.annualRevenue = event.detail.value || 'No revenue data entered.';
    }
    reset() {
        this.annualRevenue = 'No Revenue Data Entered';
    }

    @wire(queryAccountsByRevenue, { annualRevenue: '$annualRevenue' })
    accounts;
}