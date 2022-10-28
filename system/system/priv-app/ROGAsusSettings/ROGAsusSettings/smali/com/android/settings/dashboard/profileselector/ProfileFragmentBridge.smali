.class public Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge;
.super Ljava/lang/Object;
.source "ProfileFragmentBridge.java"


# static fields
.field public static final FRAGMENT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge;->FRAGMENT_MAP:Ljava/util/Map;

    .line 42
    const-class v1, Lcom/android/settings/accounts/AccountDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectAccountFragment;

    .line 43
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-class v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectManageApplications;

    .line 45
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-class v1, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectRecentLocationAccessFragment;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-class v1, Lcom/android/settings/location/LocationServices;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationServicesFragment;

    .line 49
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-class v1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
