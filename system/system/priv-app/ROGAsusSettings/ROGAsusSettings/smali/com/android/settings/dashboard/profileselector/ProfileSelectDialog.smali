.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "ProfileSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mSelectedTile:Lcom/android/settingslib/drawer/Tile;

.field private mSourceMetricCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ProfileSelectDialog"

    const/4 v1, 0x3

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Lcom/android/settingslib/drawer/Tile;I)V
    .locals 3

    .line 56
    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;

    invoke-direct {v0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "selectedTile"

    .line 58
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "sourceMetricCategory"

    .line 59
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "select_profile"

    .line 61
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static updateUserHandlesIfNeeded(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V
    .locals 6

    .line 96
    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/os/UserManager;->getTwinAppsId()I

    move-result v2

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_0
    const-string v1, "ProfileSelectDialog"

    if-ltz v3, :cond_3

    .line 104
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-nez v4, :cond_2

    .line 105
    sget-boolean v4, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete the user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 111
    :cond_3
    invoke-static {p0}, Lcom/android/settings/twinApps/TwinAppsUtil;->isTwinAppsSupport(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 112
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string p0, "Delete the twinsapp user"

    .line 113
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 85
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 87
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {v0}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSourceMetricCategory:I

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 89
    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntentWithProfile(Landroid/content/Intent;IZ)Z

    const p2, 0x8000

    .line 91
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "selectedTile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "sourceMetricCategory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSourceMetricCategory:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 74
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v2, v2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-static {v1, p1, v2}, Lcom/android/settings/dashboard/profileselector/UserAdapter;->createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings/dashboard/profileselector/UserAdapter;

    move-result-object p1

    .line 77
    sget v1, Lcom/android/settingslib/R$string;->choose_profile:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 78
    invoke-virtual {v1, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
