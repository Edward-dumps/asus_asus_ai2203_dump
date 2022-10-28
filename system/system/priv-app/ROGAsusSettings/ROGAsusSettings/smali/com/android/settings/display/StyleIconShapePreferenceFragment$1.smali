.class Lcom/android/settings/display/StyleIconShapePreferenceFragment$1;
.super Landroid/os/AsyncTask;
.source "StyleIconShapePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/StyleIconShapePreferenceFragment;->setOverlay(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/StyleIconShapePreferenceFragment;

.field final synthetic val$currentPackageName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/display/StyleIconShapePreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment$1;->this$0:Lcom/android/settings/display/StyleIconShapePreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment$1;->val$currentPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    const-string p1, "package_device_default"

    .line 194
    iget-object v0, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment$1;->this$0:Lcom/android/settings/display/StyleIconShapePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->access$000(Lcom/android/settings/display/StyleIconShapePreferenceFragment;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment$1;->val$currentPackageName:Ljava/lang/String;

    invoke-interface {p1, p0, v0, v0}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment$1;->this$0:Lcom/android/settings/display/StyleIconShapePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->access$000(Lcom/android/settings/display/StyleIconShapePreferenceFragment;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment$1;->val$packageName:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 201
    sget-object p1, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->TAG:Ljava/lang/String;

    const-string v0, "Error enabling overlay."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 190
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleIconShapePreferenceFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 208
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleIconShapePreferenceFragment$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
