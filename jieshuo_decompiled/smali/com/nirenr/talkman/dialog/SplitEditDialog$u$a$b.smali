.class Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$b;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getNotesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/androlua/LuaUtil;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
