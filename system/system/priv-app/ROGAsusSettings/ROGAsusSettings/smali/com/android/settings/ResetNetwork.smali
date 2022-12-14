.class public Lcom/android/settings/ResetNetwork;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ResetNetwork.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field mEsimCheckbox:Landroid/widget/CheckBox;

.field mEsimContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mSubscriptionSpinner:Landroid/widget/Spinner;

.field private mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ycMdKfT3aGgwhNx-5QuE3kkQbeY(Lcom/android/settings/ResetNetwork;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetwork;->lambda$onCreateView$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 150
    new-instance v0, Lcom/android/settings/ResetNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetwork$1;-><init>(Lcom/android/settings/ResetNetwork;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ResetNetwork;I)Z
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetwork;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method private establishInitialState(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->reset_network_subscription:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    .line 176
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_esim_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->erase_esim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    .line 179
    iput-object p1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    .line 180
    iget-object p1, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->reset_network_cdata:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->reset_network_desc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object p1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 185
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 186
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result p1

    .line 189
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p1

    .line 192
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 193
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    iget-object v3, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 200
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    if-ne v7, p1, :cond_3

    .line 202
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 205
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 204
    invoke-static {v5, v7}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 205
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 206
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 207
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 209
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 210
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 212
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-array v7, v0, [Ljava/lang/Object;

    .line 213
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 214
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v6, 0x2

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v6, 0x3

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v6

    const-string v5, "MCC:%s MNC:%s Slot:%s Id:%s"

    .line 213
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 216
    :cond_6
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_7
    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v5, 0x1090008

    invoke-direct {p1, v3, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    .line 220
    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 221
    iget-object v2, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 222
    iget-object p1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 223
    iget-object p1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v6, :cond_8

    .line 224
    iget-object p1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 226
    :cond_8
    iget-object p1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 229
    :cond_9
    iget-object p1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 231
    :goto_1
    iget-object p1, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->initiate_reset_network:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/ResetNetwork;->mInitiateButton:Landroid/widget/Button;

    .line 232
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetwork;->showEuiccSettings(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 234
    iget-object p1, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    new-instance v0, Lcom/android/settings/ResetNetwork$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetwork$2;-><init>(Lcom/android/settings/ResetNetwork;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 242
    :cond_a
    iget-object p0, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    return-void
.end method

.method private getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    if-nez p0, :cond_0

    const-string p0, "ResetNetwork"

    const-string v0, "No SubscriptionManager"

    .line 249
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$onCreateView$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 104
    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->reset_network_title:I

    .line 105
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p0

    return p0
.end method

.method private showEuiccSettings(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "euicc"

    .line 273
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/euicc/EuiccManager;

    .line 274
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 277
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "euicc_provisioned"

    .line 278
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    .line 279
    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x53

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x37

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->showFinalConfirmation()V

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetwork;->establishInitialState(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->reset_network_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_network_reset"

    .line 286
    invoke-static {p3, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    .line 288
    invoke-virtual {p2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 289
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 288
    invoke-static {p2, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 292
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    .line 293
    invoke-virtual {p1, v1, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/ResetNetwork$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/ResetNetwork$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/ResetNetwork;)V

    .line 294
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 296
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 299
    :cond_1
    sget p2, Lcom/android/settings/R$layout;->reset_network:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;

    const/4 p2, 0x1

    .line 302
    iget-object p3, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;->setPersistCollapsed(ZLandroid/view/View;Z)V

    .line 304
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetwork;->establishInitialState(Ljava/util/List;)V

    .line 305
    iget-object p0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    return-object p0

    .line 290
    :cond_2
    :goto_0
    sget p0, Lcom/android/settings/R$layout;->network_reset_disallowed_screen:I

    invoke-virtual {p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .locals 3

    .line 258
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 261
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 263
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    .line 264
    invoke-interface {v1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ResetNetwork"

    const-string v2, "subcription list changed"

    .line 267
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0, v0}, Lcom/android/settings/ResetNetwork;->establishInitialState(Ljava/util/List;)V

    return-void
.end method

.method showFinalConfirmation()V
    .locals 3

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 131
    iget-object v2, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 133
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const-string v2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 132
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "erase_esim"

    .line 135
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/ResetNetworkConfirm;

    .line 138
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->reset_network_confirm_title:I

    .line 140
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
