.class Lcom/android/settings/dualwifi/DualWifiConfigController2$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "DualWifiConfigController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dualwifi/DualWifiConfigController2;->setAdvancedOptionAccessibilityString()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiConfigController2;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/DualWifiConfigController2;)V
    .locals 0

    .line 1916
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2$3;->this$0:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1920
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p1, 0x0

    .line 1922
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    const/4 p1, 0x0

    .line 1924
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1926
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2$3;->this$0:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    .line 1928
    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->access$400(Lcom/android/settings/dualwifi/DualWifiConfigController2;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_advanced_toggle_description_collapsed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1929
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method
