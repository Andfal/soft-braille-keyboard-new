.class Lcom/androlua/LuaRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/luajava/LuaMetaTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaRunnable;->__index(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaRunnable;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/androlua/LuaRunnable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaRunnable$1;->this$0:Lcom/androlua/LuaRunnable;

    iput-object p2, p0, Lcom/androlua/LuaRunnable$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaRunnable$1;->this$0:Lcom/androlua/LuaRunnable;

    iget-object v1, p0, Lcom/androlua/LuaRunnable$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/androlua/LuaRunnable;->call(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public __index(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public __newIndex(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
