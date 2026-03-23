.class public Lw3/u3;
.super Lw3/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/u3$b;,
        Lw3/u3$a;
    }
.end annotation


# instance fields
.field private j:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lw3/u3$a;",
            "Lw3/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lw3/u3$b;",
            "Lw3/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw3/n0;-><init>()V

    return-void
.end method

.method public static K1(Lw3/m;Lw3/z2;Lw3/u3$a;)Lw3/d0;
    .locals 1

    instance-of v0, p1, Lw3/u3;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lw3/u3;

    invoke-virtual {v0, p2}, Lw3/u3;->J1(Lw3/u3$a;)Lw3/c;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lw3/u3$a;->j:Lw3/u3$a;

    if-ne p2, v0, :cond_1

    const-string p2, "__GeneratorFunction"

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p0, p1, p2}, Lw3/u2;->W(Lw3/m;Lw3/z2;Ljava/lang/String;)Lw3/d0;

    move-result-object p0

    return-object p0
.end method

.method public static L1(Lw3/z2;Lw3/u3$a;)Lw3/z2;
    .locals 1

    instance-of v0, p0, Lw3/u3;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lw3/u3;

    invoke-virtual {v0, p1}, Lw3/u3;->M1(Lw3/u3$a;)Lw3/z2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lw3/u3$a;->j:Lw3/u3$a;

    if-ne p1, v0, :cond_1

    const-string p1, "__GeneratorFunction"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lw3/a3;->s0(Lw3/z2;Ljava/lang/String;)Lw3/z2;

    move-result-object p0

    return-object p0
.end method

.method static O1(Lw3/m;Lw3/z2;Lw3/u3$b;)Lw3/d0;
    .locals 1

    instance-of v0, p1, Lw3/u3;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lw3/u3;

    invoke-virtual {v0, p2}, Lw3/u3;->N1(Lw3/u3$b;)Lw3/c;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lw3/u2;->W(Lw3/m;Lw3/z2;Ljava/lang/String;)Lw3/d0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public I1(Lw3/z2;Z)V
    .locals 7

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lw3/u3$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lw3/u3;->j:Ljava/util/EnumMap;

    invoke-static {}, Lw3/u3$a;->values()[Lw3/u3$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lw3/c;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lw3/u3;->j:Ljava/util/EnumMap;

    check-cast v5, Lw3/c;

    invoke-virtual {v6, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget-object v5, Lw3/u3$a;->j:Lw3/u3$a;

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lw3/u3;->j:Ljava/util/EnumMap;

    invoke-static {p1, p2}, Lw3/c;->S1(Lw3/z2;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw3/c;

    invoke-virtual {v5, v4, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lw3/u3$b;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lw3/u3;->k:Ljava/util/EnumMap;

    invoke-static {}, Lw3/u3$b;->values()[Lw3/u3$b;

    move-result-object p1

    array-length p2, p1

    :goto_2
    if-ge v2, p2, :cond_4

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lw3/c;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lw3/u3;->k:Ljava/util/EnumMap;

    check-cast v1, Lw3/c;

    invoke-virtual {v3, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public J1(Lw3/u3$a;)Lw3/c;
    .locals 1

    iget-object v0, p0, Lw3/u3;->j:Ljava/util/EnumMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public M1(Lw3/u3$a;)Lw3/z2;
    .locals 2

    invoke-virtual {p0, p1}, Lw3/u3;->J1(Lw3/u3$a;)Lw3/c;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lw3/c;->P1()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Lw3/z2;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lw3/z2;

    :cond_1
    return-object v0
.end method

.method N1(Lw3/u3$b;)Lw3/c;
    .locals 1

    iget-object v0, p0, Lw3/u3;->k:Ljava/util/EnumMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "global"

    return-object v0
.end method
