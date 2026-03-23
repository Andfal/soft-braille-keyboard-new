.class public abstract Lq/w;
.super Lq/x;
.source "SourceFile"


# instance fields
.field private final b:Lv/w;


# direct methods
.method public constructor <init>(Lv/w;)V
    .locals 1

    invoke-direct {p0}, Lq/x;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lq/w;->b:Lv/w;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 1

    invoke-virtual {p1}, Lq/m;->s()Lq/r0;

    move-result-object p1

    iget-object v0, p0, Lq/w;->b:Lv/w;

    invoke-virtual {p1, v0}, Lq/r0;->u(Lv/w;)Lq/q0;

    return-void
.end method

.method public final j()Lv/w;
    .locals 1

    iget-object v0, p0, Lq/w;->b:Lv/w;

    return-object v0
.end method
