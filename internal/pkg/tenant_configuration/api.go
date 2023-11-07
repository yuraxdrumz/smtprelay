package tenantconfiguration

import "github.com/decke/smtprelay/internal/pkg/httpgetter"

type apiTenantConfiguration struct {
	httpGetter httpgetter.HTTPGetter
}

func NewAPITenantConfiguration(httpGetter httpgetter.HTTPGetter) *apiTenantConfiguration {
	return &apiTenantConfiguration{
		httpGetter: httpGetter,
	}
}

func (a *apiTenantConfiguration) GetEmailAction(tenantID string) Action {
	return ""
}
func (a *apiTenantConfiguration) GetSendersWhitelist(tenantID string) []string {
	return nil
}
func (a *apiTenantConfiguration) GetSendersBlacklist(tenantID string) []string {
	return nil
}
func (a *apiTenantConfiguration) GetRecipientsWhiteist(tenantID string) []string {
	return nil
}
func (a *apiTenantConfiguration) GetRecipientsBlacklist(tenantID string) []string {
	return nil
}
func (a *apiTenantConfiguration) GetServerMailWhitelistlist(tenantID string) []string {
	return nil
}
func (a *apiTenantConfiguration) GetServerMailBlacklistlist(tenantID string) []string {
	return nil
}
func (a *apiTenantConfiguration) GetURLWhitelist(tenantID string) []string {
	return nil
}
func (a *apiTenantConfiguration) GetURLBlacklist(tenantID string) []string {
	return nil
}
func (a *apiTenantConfiguration) GetFileHashWhitelist(tenantID string) []string {
	return nil
}
func (a *apiTenantConfiguration) GetFileHashBlacklist(tenantID string) []string {
	return nil
}
func (a *apiTenantConfiguration) GetFileTypeWhitelist(tenantID string) []string {
	return nil
}
func (a *apiTenantConfiguration) GetFileTypeBlacklist(tenantID string) []string {
	return nil
}
func (a *apiTenantConfiguration) GetUrlRewriteToCynetProtection(tenantID string) bool {
	return false
}
func (a *apiTenantConfiguration) GetShouldShowContinueButton(tenantID string) bool {
	return false
}
func (a *apiTenantConfiguration) GetCheckForMaliciousFiles(tenantID string) bool {
	return false
}
func (a *apiTenantConfiguration) GetCheckForMaliciousURLS(tenantID string) bool {
	return false
}
