.class public abstract Lc4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc4/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lw3/z2;)Lc4/a;
    .locals 1

    invoke-static {p0}, Lc4/a;->d(Lw3/z2;)Lc4/a;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "msg.XML.not.available"

    invoke-static {v0, p0}, Lw3/u2;->a0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw3/m;->b0(Ljava/lang/String;)Lw3/b0;

    move-result-object p0

    throw p0
.end method

.method public static d(Lw3/z2;)Lc4/a;
    .locals 1

    invoke-static {p0}, Lw3/u2;->Z(Lw3/z2;)Lw3/a3;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "XML"

    invoke-static {p0, v0}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lc4/a;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lw3/a3;->l0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc4/a;

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract e(Lw3/m;Ljava/lang/Object;)Z
.end method

.method public abstract f(Lw3/m;Ljava/lang/Object;Ljava/lang/Object;Lw3/z2;I)Lw3/o2;
.end method

.method public abstract g(Lw3/m;Ljava/lang/Object;Lw3/z2;I)Lw3/o2;
.end method

.method public abstract h(Lw3/m;Ljava/lang/Object;)Ljava/lang/Object;
.end method
