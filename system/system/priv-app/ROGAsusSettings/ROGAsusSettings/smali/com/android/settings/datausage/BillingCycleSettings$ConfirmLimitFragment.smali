.class public Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# static fields
.field static final EXTRA_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 476
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 4

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 486
    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 489
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 490
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    const-wide v2, 0x140000000L

    .line 494
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 496
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "limitBytes"

    .line 497
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 499
    new-instance v0, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;

    invoke-direct {v0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;-><init>()V

    .line 500
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    .line 501
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 502
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "confirmLimit"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x227

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 528
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfirmLimitFragment onClick which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingCycleSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    .line 531
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "limitBytes"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    if-eqz p1, :cond_1

    .line 533
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    .line 535
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x1

    const-string p2, "set_data_limit"

    .line 536
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 512
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 518
    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/android/settings/R$string;->data_usage_limit_dialog_title:I

    .line 519
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->data_usage_limit_dialog_mobile:I

    .line 520
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x104000a

    .line 521
    invoke-virtual {p1, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    .line 522
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 523
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
