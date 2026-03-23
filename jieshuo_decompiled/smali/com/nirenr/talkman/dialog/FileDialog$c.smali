.class Lcom/nirenr/talkman/dialog/FileDialog$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/nirenr/talkman/dialog/FileDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/FileDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/FileDialog$c;->b:Lcom/nirenr/talkman/dialog/FileDialog;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/FileDialog$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/FileDialog$c;->a:Landroid/content/Context;

    const v0, 0x7f070251

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/FileDialog$c$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/FileDialog$c$a;-><init>(Lcom/nirenr/talkman/dialog/FileDialog$c;)V

    const-string v2, ""

    invoke-direct {p1, p2, v0, v2, v1}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void
.end method
