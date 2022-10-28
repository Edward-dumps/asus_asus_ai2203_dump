.class Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$1;
.super Ljava/lang/Object;
.source "FingerprintSensorAnimationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->onBindViewHolder(Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;I)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 226
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$1;->val$position:I

    invoke-virtual {p1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->setSelectItem(I)V

    return-void
.end method
