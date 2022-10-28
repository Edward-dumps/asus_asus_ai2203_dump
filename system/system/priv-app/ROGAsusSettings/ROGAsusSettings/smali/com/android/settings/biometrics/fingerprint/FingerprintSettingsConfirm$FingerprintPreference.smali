.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintPreference;
.super Lcom/android/settingslib/widget/TwoTargetPreference;
.source "FingerprintSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintPreference"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 487
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 488
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintPreference;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 505
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 506
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintPreference;->mView:Landroid/view/View;

    const p0, 0x1020016

    .line 507
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p1, -0x1

    .line 509
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method
