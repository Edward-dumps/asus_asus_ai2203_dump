.class Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1QueryTask;
.super Landroid/os/AsyncTask;
.source "DualWifiHotspotDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->checkActive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryTask"
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
.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiHotspotDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1QueryTask;->this$0:Lcom/android/settings/dualwifi/DualWifiHotspotDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11

    const-string p1, "1"

    const-string v0, "category"

    const-string v1, "auto_start"

    const-string v2, "is_game"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 111
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1QueryTask;->this$0:Lcom/android/settings/dualwifi/DualWifiHotspotDialog;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->access$400(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->access$300()Landroid/net/Uri;

    move-result-object v6

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "packagename = ?"

    const-string p0, "com.asus.gamewidget.status"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 116
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 117
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v4, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 118
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 119
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v4, :cond_1

    .line 126
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DualWifiHotspotDialog"

    const-string v0, "Can not get Game Genie status!"

    .line 123
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_2
    if-eqz v4, :cond_2

    .line 126
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_2
    throw p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1QueryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 135
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "DualWifiHotspotDialog"

    if-eqz p1, :cond_0

    const-string p1, "is not active"

    .line 136
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1QueryTask;->this$0:Lcom/android/settings/dualwifi/DualWifiHotspotDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p0, "is active"

    .line 140
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1QueryTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
