.class Lcom/nirenr/talkman/p$d$a;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/p$d;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/p$d;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/p$d;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/p$d$a;->a:Lcom/nirenr/talkman/p$d;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/p$d$a;->f([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected f([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "\u89e3\u8bf4/\u65e5\u5fd7"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/androlua/LuaUtil;->rmDir(Ljava/io/File;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected g(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/p$d$a;->a:Lcom/nirenr/talkman/p$d;

    iget-object p1, p1, Lcom/nirenr/talkman/p$d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\u65e5\u5fd7"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0703bb

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/p$d$a;->g(Ljava/lang/Boolean;)V

    return-void
.end method
