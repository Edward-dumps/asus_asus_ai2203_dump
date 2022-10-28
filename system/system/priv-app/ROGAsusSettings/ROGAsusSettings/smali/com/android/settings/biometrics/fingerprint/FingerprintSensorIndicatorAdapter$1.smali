.class Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$1;
.super Ljava/lang/Object;
.source "FingerprintSensorIndicatorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->onBindViewHolder(Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;I)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 244
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$1;->val$position:I

    invoke-virtual {p1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->setSelectItem(I)V

    return-void
.end method
