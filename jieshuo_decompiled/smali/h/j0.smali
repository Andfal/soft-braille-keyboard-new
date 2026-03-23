.class public Lh/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;


# static fields
.field public static a:Lh/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/j0;

    invoke-direct {v0}, Lh/j0;-><init>()V

    sput-object v0, Lh/j0;->a:Lh/j0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    check-cast p2, Lh/i0;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lh/k0;->G()V

    return-void

    :cond_0
    invoke-interface {p2, p1, p3, p4, p5}, Lh/i0;->a(Lh/k0;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method
