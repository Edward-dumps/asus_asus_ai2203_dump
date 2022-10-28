.class public Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SupportedLinksDialogFragment.java"


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mSupportedLinkWrapperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Lcom/android/settings/applications/intentpicker/SupportedLinkViewModel;


# direct methods
.method public static synthetic $r8$lambda$amH5aLm_yhgJ9A_d75weTFWgDLw(Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private displaySelectedItem()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    .line 130
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 131
    instance-of v1, v0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->addSelectedLinksPreference()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private doSelectedAction()V
    .locals 3

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/verify/domain/DomainVerificationManager;

    .line 95
    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->mPackage:Ljava/lang/String;

    .line 96
    invoke-static {v0, v1}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getDomainVerificationUserState(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->mSupportedLinkWrapperList:Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->updateUserSelection(Landroid/content/pm/verify/domain/DomainVerificationManager;Landroid/content/pm/verify/domain/DomainVerificationUserState;)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->displaySelectedItem()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getSupportedLinksTitle()Ljava/lang/String;
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->mSupportedLinkWrapperList:Ljava/util/List;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 87
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$plurals;->app_launch_supported_links_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 88
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->doSelectedAction()V

    return-void
.end method

.method private setDomainVerificationUserSelection(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/util/UUID;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/verify/domain/DomainVerificationManager;",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 122
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/pm/verify/domain/DomainVerificationManager;->setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;Z)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addSelectedItems : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SupportedLinksDialogFrg"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateUserSelection(Landroid/content/pm/verify/domain/DomainVerificationManager;Landroid/content/pm/verify/domain/DomainVerificationUserState;)V
    .locals 4

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->mSupportedLinkWrapperList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;

    .line 109
    invoke-virtual {v2}, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {v2}, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 114
    invoke-virtual {p2}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->getIdentifier()Ljava/util/UUID;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->setDomainVerificationUserSelection(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/util/UUID;Ljava/util/Set;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "app_package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->mPackage:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/android/settings/applications/intentpicker/SupportedLinkViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/intentpicker/SupportedLinkViewModel;

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->mViewModel:Lcom/android/settings/applications/intentpicker/SupportedLinkViewModel;

    .line 54
    invoke-virtual {p1}, Lcom/android/settings/applications/intentpicker/SupportedLinkViewModel;->getSupportedLinkWrapperList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->mSupportedLinkWrapperList:Ljava/util/List;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 60
    new-instance v0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->mSupportedLinkWrapperList:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 62
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;->getSupportedLinksTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getCentralizedDialogTitle(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->app_launch_supported_links_add:I

    new-instance v2, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/intentpicker/SupportedLinksDialogFragment;)V

    .line 67
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->app_launch_dialog_cancel:I

    .line 70
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public showDialog(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "SupportedLinksDialog"

    .line 81
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
