.class Lcom/android/settings/gestures/OneHandedSettings$1;
.super Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;
.source "OneHandedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/gestures/OneHandedSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/gestures/OneHandedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/gestures/OneHandedSettings;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedSettings$1;->this$0:Lcom/android/settings/gestures/OneHandedSettings;

    invoke-direct {p0}, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettings$1;->this$0:Lcom/android/settings/gestures/OneHandedSettings;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/gestures/OneHandedSettings;->access$002(Lcom/android/settings/gestures/OneHandedSettings;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
