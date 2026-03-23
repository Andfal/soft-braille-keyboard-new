.class Lcom/androlua/LuaEditActivity$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity;->openFile(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaEditActivity;

.field final synthetic val$dir:Ljava/io/File;

.field final synthetic val$list:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;Ljava/io/File;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$22;->this$0:Lcom/androlua/LuaEditActivity;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$22;->val$dir:Ljava/io/File;

    iput-object p3, p0, Lcom/androlua/LuaEditActivity$22;->val$list:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$22;->val$dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$22;->this$0:Lcom/androlua/LuaEditActivity;

    iget-object p2, p0, Lcom/androlua/LuaEditActivity$22;->val$dir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androlua/LuaEditActivity;->l(Lcom/androlua/LuaEditActivity;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$22;->val$dir:Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$22;->val$list:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$22;->this$0:Lcom/androlua/LuaEditActivity;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$22;->val$dir:Ljava/io/File;

    iget-object v2, p0, Lcom/androlua/LuaEditActivity$22;->val$list:[Ljava/lang/String;

    aget-object p2, v2, p2

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/androlua/LuaEditActivity;->l(Lcom/androlua/LuaEditActivity;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/androlua/LuaEditActivity$22;->this$0:Lcom/androlua/LuaEditActivity;

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$22;->val$dir:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/androlua/LuaEditActivity;->k(Lcom/androlua/LuaEditActivity;Ljava/io/File;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$22;->this$0:Lcom/androlua/LuaEditActivity;

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$22;->val$list:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-static {p1, p2}, Lcom/androlua/LuaEditActivity;->n(Lcom/androlua/LuaEditActivity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
