.class Lcom/nirenr/talkman/dialog/SplitEditDialog$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/dialog/SplitEditDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$t;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$t;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$t;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$t;->a:[Ljava/lang/String;

    aget-object p2, v2, p2

    invoke-virtual {v1, p2}, Lcom/androlua/LuaApplication;->getNotesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/androlua/LuaUtil;->readAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->r(Lcom/nirenr/talkman/dialog/SplitEditDialog;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$t;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->H(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    return-void
.end method
