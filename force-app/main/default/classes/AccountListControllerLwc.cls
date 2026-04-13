/* * This is a sample Apex controller for the AccountList LWC component.
 * It includes a method to query accounts based on the number of employees.
 * The method is annotated with @AuraEnabled to make it accessible from the LWC component, and cacheable=true
 *  to improve performance by caching the results.
 * LWC Trailhead Exercise:https://trailhead.salesforce.com/content/learn/modules/lwc-for-visualforce-developers/work-with-salesforce-data-in-lwc?trailmix_creator_id=strailhead&trailmix_slug=prepare-for-your-salesforce-platform-developer-ii-credential
 * Create an Apex controller and wire a method that returns account records filtered by annual revenue.
* Test edit from Git Remote Repo

 */
public with sharing class AccountListControllerLwc {
    @AuraEnabled(cacheable=true)
public static List<Account> queryAccountsByRevenue(Decimal annualRevenue) {
    return [
        SELECT Id,Name
        FROM Account
        WHERE AnnualRevenue >= :annualRevenue
    ];
}
}


