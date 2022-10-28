.class Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda$1;
.super Ljava/lang/Object;
.source "AsusUnlockSettingsYoda.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->access$000(Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;)Landroid/widget/RadioButton;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
