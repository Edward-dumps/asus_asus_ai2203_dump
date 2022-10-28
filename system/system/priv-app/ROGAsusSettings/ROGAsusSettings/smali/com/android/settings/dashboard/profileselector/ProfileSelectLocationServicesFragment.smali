.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationServicesFragment;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "ProfileSelectLocationServicesFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragments()[Landroidx/fragment/app/Fragment;
    .locals 4

    .line 33
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "profile"

    const/4 v1, 0x2

    .line 34
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    new-instance v2, Lcom/android/settings/location/LocationServicesForWork;

    invoke-direct {v2}, Lcom/android/settings/location/LocationServicesForWork;-><init>()V

    .line 36
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    .line 39
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    new-instance v0, Lcom/android/settings/location/LocationServices;

    invoke-direct {v0}, Lcom/android/settings/location/LocationServices;-><init>()V

    .line 41
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-array p0, v1, [Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    aput-object v2, p0, v3

    return-object p0
.end method
