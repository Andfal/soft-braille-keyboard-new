.class Lcom/androlua/LuaEditActivity$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity;->openProjects()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaEditActivity;

.field final synthetic val$list:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$18;->this$0:Lcom/androlua/LuaEditActivity;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$18;->val$list:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$18;->this$0:Lcom/androlua/LuaEditActivity;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$18;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {v1}, Lcom/androlua/LuaEditActivity;->i(Lcom/androlua/LuaEditActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaEditActivity$18;->val$list:[Ljava/lang/String;

    aget-object p2, v2, p2

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/androlua/LuaEditActivity;->k(Lcom/androlua/LuaEditActivity;Ljava/io/File;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$18;->this$0:Lcom/androlua/LuaEditActivity;

    const-string p2, "main.lua"

    invoke-static {p1, p2}, Lcom/androlua/LuaEditActivity;->n(Lcom/androlua/LuaEditActivity;Ljava/lang/String;)V

    return-void
.end method
