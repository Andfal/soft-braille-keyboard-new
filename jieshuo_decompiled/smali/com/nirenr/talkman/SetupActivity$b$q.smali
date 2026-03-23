.class Lcom/nirenr/talkman/SetupActivity$b$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/SetupActivity$b;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/SetupActivity$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/SetupActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$q;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const-string p1, "android.intent.category.DEFAULT"

    const-string p2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    const/16 v0, 0x8f8

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "package:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nirenr/talkman/SetupActivity$b$q;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/nirenr/talkman/SetupActivity$b$q;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$q;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    iget-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$q;->a:Lcom/nirenr/talkman/SetupActivity$b;

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/preference/PreferenceFragment;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
