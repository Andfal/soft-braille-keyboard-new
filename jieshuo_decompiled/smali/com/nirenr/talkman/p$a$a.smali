.class Lcom/nirenr/talkman/p$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/p$a;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/nirenr/talkman/p$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/p$a;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/p$a$a;->b:Lcom/nirenr/talkman/p$a;

    iput-object p2, p0, Lcom/nirenr/talkman/p$a$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p2, p0, Lcom/nirenr/talkman/p$a$a;->a:Ljava/io/File;

    invoke-static {p2}, Lcom/androlua/LuaUtil;->rmDir(Ljava/io/File;)Z

    iget-object p2, p0, Lcom/nirenr/talkman/p$a$a;->b:Lcom/nirenr/talkman/p$a;

    iget-object p2, p2, Lcom/nirenr/talkman/p$a;->a:Landroid/app/Activity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0703bb

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
