.class public Lh/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;


# static fields
.field public static final b:Lh/a0;


# instance fields
.field private final a:Ljava/lang/reflect/Member;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/a0;

    invoke-direct {v0}, Lh/a0;-><init>()V

    sput-object v0, Lh/a0;->b:Lh/a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/a0;->a:Ljava/lang/reflect/Member;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Member;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/a0;->a:Ljava/lang/reflect/Member;

    return-void
.end method


# virtual methods
.method public b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    const-string p3, "getEnumValue error"

    iget-object p4, p0, Lh/a0;->a:Ljava/lang/reflect/Member;

    if-nez p4, :cond_0

    iget-object p1, p1, Lh/k0;->k:Lh/f1;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p1, p2}, Lh/f1;->u(Ljava/lang/Enum;)V

    return-void

    :cond_0
    :try_start_0
    instance-of p5, p4, Ljava/lang/reflect/Field;

    if-eqz p5, :cond_1

    check-cast p4, Ljava/lang/reflect/Field;

    invoke-virtual {p4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    check-cast p4, Ljava/lang/reflect/Method;

    const/4 p5, 0x0

    new-array p5, p5, [Ljava/lang/Object;

    invoke-virtual {p4, p2, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1, p2}, Lh/k0;->E(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lc/d;

    invoke-direct {p2, p3, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lc/d;

    invoke-direct {p2, p3, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lc/d;

    invoke-direct {p2, p3, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
