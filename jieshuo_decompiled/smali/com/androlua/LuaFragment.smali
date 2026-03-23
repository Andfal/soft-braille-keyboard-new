.class public Lcom/androlua/LuaFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field private mLayout:Lcom/luajava/LuaTable;

.field private mLoadLayout:Lcom/luajava/LuaObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaFragment;->mLayout:Lcom/luajava/LuaTable;

    iput-object v0, p0, Lcom/androlua/LuaFragment;->mLoadLayout:Lcom/luajava/LuaObject;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/androlua/LuaFragment;->mLoadLayout:Lcom/luajava/LuaObject;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/androlua/LuaFragment;->mLayout:Lcom/luajava/LuaTable;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-virtual {p1, p2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setLayout(Lcom/luajava/LuaTable;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaFragment;->mLayout:Lcom/luajava/LuaTable;

    return-void
.end method
