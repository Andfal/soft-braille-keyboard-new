.class Lv1/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv1/c;->a(Lz1/a;)Lv1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv1/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lt1/f;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lv1/c;


# direct methods
.method constructor <init>(Lv1/c;Lt1/f;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lv1/c$f;->c:Lv1/c;

    iput-object p2, p0, Lv1/c$f;->a:Lt1/f;

    iput-object p3, p0, Lv1/c$f;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lv1/c$f;->a:Lt1/f;

    iget-object v1, p0, Lv1/c$f;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lt1/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
