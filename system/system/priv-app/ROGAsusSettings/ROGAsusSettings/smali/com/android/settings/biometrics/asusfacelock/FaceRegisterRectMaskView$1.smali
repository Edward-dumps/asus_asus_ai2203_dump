.class Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView$1;
.super Ljava/lang/Object;
.source "FaceRegisterRectMaskView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->setProgressStart(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

.field final synthetic val$progressText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;Landroid/widget/TextView;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

    iput-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView$1;->val$progressText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->access$002(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;I)I

    .line 114
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView$1;->val$progressText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->access$000(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
