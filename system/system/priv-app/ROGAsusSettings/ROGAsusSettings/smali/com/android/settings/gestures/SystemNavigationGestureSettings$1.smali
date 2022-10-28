.class Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;
.super Ljava/lang/Object;
.source "SystemNavigationGestureSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/gestures/SystemNavigationGestureSettings;->bindPreferenceExtra(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/gestures/SystemNavigationGestureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;->this$0:Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 141
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings.action.NavigationThreeBtnAdv"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object p0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;->this$0:Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
