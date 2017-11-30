

# artifactory
`import "github.com/webdevwilson/go-artifactory/artifactory"`

* [Overview](#pkg-overview)
* [Index](#pkg-index)

## <a name="pkg-overview">Overview</a>



## <a name="pkg-index">Index</a>
* [func NewClient(username, pass, url string, client *http.Client) *clientConfig](#NewClient)
* [type Client](#Client)
* [type Group](#Group)
* [type LocalRepositoryConfiguration](#LocalRepositoryConfiguration)
* [type RemoteRepositoryConfiguration](#RemoteRepositoryConfiguration)
* [type User](#User)
* [type VirtualRepositoryConfiguration](#VirtualRepositoryConfiguration)


#### <a name="pkg-files">Package files</a>
[client.go](/src/github.com/webdevwilson/go-artifactory/artifactory/client.go) [group.go](/src/github.com/webdevwilson/go-artifactory/artifactory/group.go) [repository.go](/src/github.com/webdevwilson/go-artifactory/artifactory/repository.go) [user.go](/src/github.com/webdevwilson/go-artifactory/artifactory/user.go) 





## <a name="NewClient">func</a> [NewClient](/src/target/client.go?s=941:1018#L43)
``` go
func NewClient(username, pass, url string, client *http.Client) *clientConfig
```
NewClient constructs a new artifactory client




## <a name="Client">type</a> [Client](/src/target/client.go?s=344:859#L23)
``` go
type Client interface {
    Ping() error
    GetRepository(key string, v interface{}) error
    CreateRepository(key string, v interface{}) error
    UpdateRepository(key string, v interface{}) error
    DeleteRepository(key string) error
    GetUser(name string) (*User, error)
    CreateUser(u *User) error
    UpdateUser(u *User) error
    DeleteUser(name string) error
    GetGroup(name string) (*Group, error)
    CreateGroup(g *Group) error
    UpdateGroup(g *Group) error
    DeleteGroup(name string) error
    ExpireUserPassword(name string) error
}
```
Client is used to call Artifactory REST APIs










## <a name="Group">type</a> [Group](/src/target/group.go?s=98:307#L9)
``` go
type Group struct {
    Name            string `json:"name,omitempty"`
    AutoJoin        bool   `json:"autoJoin"`
    Realm           string `json:"realm,omitempty"`
    RealmAttributes string `json:"realm,omitempty"`
}
```
Group represents an Artifactory group










## <a name="LocalRepositoryConfiguration">type</a> [LocalRepositoryConfiguration](/src/target/repository.go?s=141:1884#L9)
``` go
type LocalRepositoryConfiguration struct {
    Key                          string   `json:"key,omitempty"`
    RClass                       string   `json:"rclass,omitempty"`
    PackageType                  string   `json:"packageType,omitempty"`
    Description                  string   `json:"description,omitempty"`
    Notes                        string   `json:"notes,omitempty"`
    IncludesPattern              string   `json:"includesPattern,omitempty"`
    ExcludesPattern              string   `json:"excludesPattern,omitempty"`
    RepoLayoutRef                string   `json:"repoLayoutRef,omitempty"`
    HandleReleases               bool     `json:"handleReleases,omitempty"`
    HandleSnapshots              bool     `json:"handleSnapshots,omitempty"`
    MaxUniqueSnapshots           int      `json:"maxUniqueSnapshots,omitempty"`
    DebianTrivialLayout          bool     `json:"debianTrivialLayout,omitempty"`
    ChecksumPolicyType           string   `json:"checksumPolicyType,omitempty"`
    MaxUniqueTags                int      `json:"maxUniqueTags,omitempty"`
    SnapshotVersionBehavior      string   `json:"snapshotVersionBehavior,omitempty"`
    SuppressPomConsistencyChecks bool     `json:"suppressPomConsistencyChecks,omitempty"`
    BlackedOut                   bool     `json:"blackedOut,omitempty"`
    PropertySets                 []string `json:"propertySets,omitempty"`
    ArchiveBrowsingEnabled       bool     `json:"archiveBrowsingEnabled,omitempty"`
    CalculateYumMetadata         bool     `json:"calculateYumMetadata,omitempty"`
    YumRootDepth                 int      `json:"yumRootDepth,omitempty"`
    DockerAPIVersion             string   `json:"dockerApiVersion,omitempty"`
    EnableFileListsIndexing      bool     `json:"enableFileListsIndexing,omitempty"`
}
```
LocalRepositoryConfiguration contains items present in local repository requests










## <a name="RemoteRepositoryConfiguration">type</a> [RemoteRepositoryConfiguration](/src/target/repository.go?s=1955:5103#L36)
``` go
type RemoteRepositoryConfiguration struct {
    Key                               string   `json:"key,omitempty"`
    RClass                            string   `json:"rclass,omitempty"`
    PackageType                       string   `json:"packageType,omitempty"`
    URL                               string   `json:"url,omitempty"`
    Username                          string   `json:"username,omitempty"`
    Password                          string   `json:"password,omitempty"`
    Proxy                             string   `json:"proxy,omitempty"`
    Description                       string   `json:"description,omitempty"`
    Notes                             string   `json:"notes,omitempty"`
    IncludesPattern                   string   `json:"includesPattern,omitempty"`
    ExcludesPattern                   string   `json:"excludesPattern,omitempty"`
    RepoLayoutRef                     string   `json:"repoLayoutRef,omitempty"`
    RemoteRepoChecksumPolicyType      string   `json:"remoteRepoChecksumPolicyType,omitempty"`
    HandleReleases                    bool     `json:"handleReleases,omitempty"`
    HandleSnapshots                   bool     `json:"handleSnapshots,omitempty"`
    MaxUniqueSnapshots                int      `json:"maxUniqueSnapshots,omitempty"`
    SuppressPomConsistencyChecks      bool     `json:"suppressPomConsistencyChecks,omitempty"`
    HardFail                          bool     `json:"hardFail,omitempty"`
    Offline                           bool     `json:"offline,omitempty"`
    BlackedOut                        bool     `json:"blackedOut,omitempty"`
    StoreArtifactsLocally             bool     `json:"storeArtifactsLocally,omitempty"`
    SocketTimeoutMillis               int      `json:"socketTimeoutMillis,omitempty"`
    LocalAddress                      string   `json:"localAddress,omitempty"`
    RetrievalCachePeriodSeconds       int      `json:"retrievalCachePeriodSecs,omitempty"`
    FailedCachePeriodSeconds          int      `json:"failedRetrievalCachePeriodSecs,omitempty"`
    MissedCachePeriodSeconds          int      `json:"missedRetrievalCachePeriodSecs,omitempty"`
    UnusedArtifactsCleanupEnabled     bool     `json:"unusedArtifactsCleanupEnabled,omitempty"`
    UnusedArtifactsCleanupPeriodHours int      `json:"unusedArtifactsCleanupPeriodHours,omitempty"`
    FetchJarsEagerly                  bool     `json:"fetchJarsEagerly,omitempty"`
    FetchSourcesEagerly               bool     `json:"fetchSourcesEagerly,omitempty"`
    ShareConfiguration                bool     `json:"shareConfiguration,omitempty"`
    SynchronizeProperties             bool     `json:"synchronizeProperties,omitempty"`
    PropertySets                      []string `json:"propertySets,omitempty"`
    AllowAnyHostAuth                  bool     `json:"allowAnyHostAuth,omitempty"`
    EnableCookieManagement            bool     `json:"enableCookieManagement,omitempty"`
    BowerRegistryURL                  string   `json:"bowerRegistryUrl,omitempty"`
    VCSType                           string   `json:"vcsType,omitempty"`
    VCSGitProvider                    string   `json:"vcsGitProvider,omitempty"`
    VCSGitDownloadURL                 string   `json:"vcsGitDownloadUrl,omitempty"`
}
```
RemoteRepositoryConfiguration for configuring a remote repository










## <a name="User">type</a> [User](/src/target/user.go?s=96:666#L9)
``` go
type User struct {
    Name                     string   `json:"name,omitempty"`
    Email                    string   `json:"email,omitempty"`
    Password                 string   `json:"password,omitempty"`
    Admin                    bool     `json:"admin"`
    ProfileUpdatable         bool     `json:"profileUpdatable"`
    InternalPasswordDisabled bool     `json:"internalPasswordDisabled,omitempty"`
    LastLoggedIn             string   `json:"lastLoggedIn,omitempty"`
    Realm                    string   `json:"realm,omitempty"`
    Groups                   []string `json:"groups"`
}
```
User represents an Artifactory user










## <a name="VirtualRepositoryConfiguration">type</a> [VirtualRepositoryConfiguration](/src/target/repository.go?s=5143:6288#L79)
``` go
type VirtualRepositoryConfiguration struct {
    Key                                           string   `json:"key,omitempty"`
    RClass                                        string   `json:"rclass,omitempty"`
    PackageType                                   string   `json:"packageType,omitempty"`
    Description                                   string   `json:"description,omitempty"`
    Notes                                         string   `json:"notes,omitempty"`
    IncludesPattern                               string   `json:"includesPattern,omitempty"`
    ExcludesPattern                               string   `json:"excludesPattern,omitempty"`
    ArtifactoryRequestsCanRetrieveRemoteArtifacts bool     `json:"artifactoryRequestsCanRetrieveRemoteArtifacts,omitempty"`
    KeyPair                                       string   `json:"keyPair,omitempty"`
    PomRepositoryReferencesCleanupPolicy          string   `json:"pomRepositoryReferencesCleanupPolicy,omitempty"`
    DefaultDeploymentRepo                         string   `json:"defaultDeploymentRepo,omitempty"`
    Repositories                                  []string `json:"repositories,omitempty"`
}
```
VirtualRepositoryConfiguration for














- - -
Generated by [godoc2md](http://godoc.org/github.com/davecheney/godoc2md)
