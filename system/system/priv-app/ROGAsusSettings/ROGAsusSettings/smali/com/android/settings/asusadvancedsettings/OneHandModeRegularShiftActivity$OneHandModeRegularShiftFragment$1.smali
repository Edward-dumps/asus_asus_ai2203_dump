.class Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;
.super Ljava/lang/Object;
.source "OneHandModeRegularShiftActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downY:I

.field originHeight:I

.field final synthetic this$0:Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;

.field final synthetic val$imgSize:I

.field final synthetic val$lowerBound:F

.field final synthetic val$upperBound:F


# direct methods
.method constructor <init>(Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;IFF)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->this$0:Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;

    iput p2, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->val$imgSize:I

    iput p3, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->val$lowerBound:F

    iput p4, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->val$upperBound:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 237
    iput p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->downY:I

    .line 238
    iput p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->originHeight:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    const/4 v2, -0x1

    if-eq p2, v1, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    goto/16 :goto_0

    .line 263
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 264
    invoke-static {}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_MOVE"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->downY:I

    sub-int/2addr v0, p1

    .line 266
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->this$0:Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;

    invoke-static {p1}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->access$100(Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 267
    iget p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 268
    iget v3, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->downY:I

    if-eq v3, v2, :cond_1

    iget v3, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->originHeight:I

    if-eq v3, v2, :cond_1

    sub-int p2, v3, v0

    .line 269
    :cond_1
    iget v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->val$imgSize:I

    sub-int/2addr v0, p2

    int-to-float v2, v0

    .line 270
    iget v3, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->val$lowerBound:F

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_5

    iget v3, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->val$upperBound:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    goto/16 :goto_0

    .line 271
    :cond_2
    invoke-static {}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imgUpperPosition= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v2, v0

    .line 274
    invoke-static {}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ratio= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->this$0:Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;

    invoke-static {v0}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->access$200(Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_onehand_ctrl_offsetY"

    invoke-static {v0, v3, v2}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity;->putSecureFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)V

    .line 276
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 277
    iget-object p2, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->this$0:Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;

    invoke-static {p2}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->access$100(Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 256
    :cond_3
    iput v2, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->downY:I

    .line 257
    iput v2, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->originHeight:I

    .line 258
    invoke-static {}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_UP"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 249
    invoke-static {}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_DOWN"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iput v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->downY:I

    .line 251
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->this$0:Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;

    invoke-static {p1}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->access$100(Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 252
    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->originHeight:I

    .line 280
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;->this$0:Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->access$100(Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v1
.end method
