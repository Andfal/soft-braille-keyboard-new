.class public Lcom/androlua/LuaPrint;
.super Lcom/luajava/JavaFunction;
.source "SourceFile"


# instance fields
.field private L:Lcom/luajava/LuaState;

.field private mLuaContext:Lcom/androlua/LuaContext;

.field private output:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/luajava/JavaFunction;-><init>(Lcom/luajava/LuaState;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaPrint;->output:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/androlua/LuaPrint;->L:Lcom/luajava/LuaState;

    iput-object p1, p0, Lcom/androlua/LuaPrint;->mLuaContext:Lcom/androlua/LuaContext;

    return-void
.end method


# virtual methods
.method public execute()I
    .locals 5

    iget-object v0, p0, Lcom/androlua/LuaPrint;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->z()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaPrint;->mLuaContext:Lcom/androlua/LuaContext;

    const-string v2, ""

    invoke-interface {v0, v2}, Lcom/androlua/LuaContext;->sendMsg(Ljava/lang/String;)V

    return v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/androlua/LuaPrint;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->z()I

    move-result v0

    if-gt v2, v0, :cond_6

    iget-object v0, p0, Lcom/androlua/LuaPrint;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->w0(I)I

    move-result v0

    iget-object v3, p0, Lcom/androlua/LuaPrint;->L:Lcom/luajava/LuaState;

    invoke-virtual {v3, v0}, Lcom/luajava/LuaState;->x0(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "userdata"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/androlua/LuaPrint;->L:Lcom/luajava/LuaState;

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "boolean"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/androlua/LuaPrint;->L:Lcom/luajava/LuaState;

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->r0(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "true"

    goto :goto_1

    :cond_3
    const-string v3, "false"

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/androlua/LuaPrint;->L:Lcom/luajava/LuaState;

    invoke-virtual {v3, v2}, Lcom/luajava/LuaState;->e(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v3

    :goto_2
    iget-object v3, p0, Lcom/androlua/LuaPrint;->output:Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/androlua/LuaPrint;->output:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/androlua/LuaPrint;->output:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/androlua/LuaPrint;->mLuaContext:Lcom/androlua/LuaContext;

    iget-object v2, p0, Lcom/androlua/LuaPrint;->output:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/androlua/LuaPrint;->output:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/androlua/LuaContext;->sendMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaPrint;->output:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return v1
.end method
