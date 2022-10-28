.class public final Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;
.super Ljava/lang/Object;
.source "ActionDisabledByAdminDialogHelper.java"


# instance fields
.field private final mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;

.field private final mActivity:Landroid/app/Activity;

.field private mDialogView:Landroid/view/ViewGroup;

.field mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mRestriction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->admin_support_details_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    .line 66
    new-instance v0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;

    invoke-direct {v0, p1}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 67
    invoke-static {p1, p2, v0, v1}, Lcom/android/settingslib/enterprise/ActionDisabledByAdminControllerFactory;->createInstance(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/enterprise/DeviceAdminStringProvider;Landroid/os/UserHandle;)Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;

    return-void
.end method

.method private getEnforcementAdminUserId()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result p0

    return p0
.end method

.method private getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I
    .locals 0

    .line 73
    iget-object p0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    :goto_0
    return p0
.end method

.method private initializeDialogViews(Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;ILjava/lang/String;)V
    .locals 2

    .line 116
    iget-object v0, p2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;

    invoke-interface {v1, p2, p3}, Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;->updateEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;I)V

    .line 122
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportIcon(Landroid/view/View;Landroid/content/ComponentName;I)V

    .line 124
    invoke-direct {p0, v0, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->isNotCurrentUserOrProfile(Landroid/content/ComponentName;I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move-object v0, v1

    .line 128
    :cond_1
    invoke-virtual {p0, p1, p4}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportTitle(Landroid/view/View;Ljava/lang/String;)V

    const/16 p2, -0x2710

    if-ne p3, p2, :cond_2

    goto :goto_0

    .line 134
    :cond_2
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 137
    :goto_0
    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    new-instance p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p3, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method private isNotCurrentUserOrProfile(Landroid/content/ComponentName;I)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 142
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4

    .line 82
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->okay:I

    iget-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;

    iget-object v3, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 85
    invoke-interface {v2, v3, p2}, Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;->getPositiveButtonListener(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    .line 86
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-object v0
.end method

.method prepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;

    new-instance v1, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;

    iget-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p1}, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;-><init>(Landroid/app/Activity;Landroidx/appcompat/app/AlertDialog$Builder;)V

    invoke-interface {v0, v1}, Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;->initialize(Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher;)V

    .line 97
    iput-object p3, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 98
    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId()I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->initializeDialogViews(Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;ILjava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;

    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-interface {p1, p0}, Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;->setupLearnMoreButton(Landroid/content/Context;)V

    return-void
.end method

.method setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 3

    if-eqz p3, :cond_5

    .line 166
    iget-object v0, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "device_policy"

    .line 170
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 173
    iget-object v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 175
    invoke-direct {p0, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result v1

    .line 174
    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    iget-object p1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    if-nez p1, :cond_2

    .line 179
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    .line 181
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const/16 v1, 0x3e8

    invoke-static {p1, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 182
    iget-object p1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 183
    invoke-direct {p0, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result p3

    .line 182
    invoke-virtual {v0, p1, p3}, Landroid/app/admin/DevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 176
    :cond_3
    :goto_0
    iput-object v2, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 186
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;

    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 187
    invoke-interface {p1, p0, v2}, Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;->getAdminSupportContentString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 189
    sget p1, Lcom/android/settings/R$id;->admin_support_msg:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p0, :cond_5

    .line 191
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method setAdminSupportIcon(Landroid/view/View;Landroid/content/ComponentName;I)V
    .locals 3

    .line 147
    sget p2, Lcom/android/settings/R$id;->admin_support_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 148
    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 149
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string v0, "ic_info"

    const-string v1, "drawable"

    const-string v2, "android"

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 148
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method setAdminSupportTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 156
    sget v0, Lcom/android/settings/R$id;->admin_support_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;

    invoke-interface {p0, p2}, Lcom/android/settingslib/enterprise/ActionDisabledByAdminController;->getAdminSupportTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateDialog(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 109
    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    .line 110
    iget-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->initializeDialogViews(Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;ILjava/lang/String;)V

    return-void
.end method
