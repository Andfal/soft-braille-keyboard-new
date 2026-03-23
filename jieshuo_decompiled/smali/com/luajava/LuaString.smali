.class public Lcom/luajava/LuaString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luajava/LuaString;->a:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaString;->a:[B

    return-object v0
.end method

.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaString;->a:[B

    aget-byte p1, v0, p1

    int-to-char p1, p1

    return p1
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaString;->a:[B

    array-length v0, v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/luajava/LuaString;->a:[B

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/luajava/LuaString;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
