package tenantconfiguration

type Action string

const (
	Junk   Action = "junk"
	Delete Action = "delete"
	Drop   Action = "drop"
)

type TenantConfiguration interface {
	GetEmailAction(tenantID string) Action
	GetSendersWhitelist(tenantID string) []string
	GetSendersBlacklist(tenantID string) []string
	GetRecipientsWhiteist(tenantID string) []string
	GetRecipientsBlacklist(tenantID string) []string
	GetServerMailWhitelistlist(tenantID string) []string
	GetServerMailBlacklistlist(tenantID string) []string
	GetURLWhitelist(tenantID string) []string
	GetURLBlacklist(tenantID string) []string
	GetFileHashWhitelist(tenantID string) []string
	GetFileHashBlacklist(tenantID string) []string
	GetFileTypeWhitelist(tenantID string) []string
	GetFileTypeBlacklist(tenantID string) []string
	GetUrlRewriteToCynetProtection(tenantID string) bool
	GetShouldShowContinueButton(tenantID string) bool
	GetCheckForMaliciousFiles(tenantID string) bool
	GetCheckForMaliciousURLS(tenantID string) bool
}
