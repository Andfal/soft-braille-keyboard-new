.class Lv1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv1/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lv1/i;
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
.field final synthetic a:Lv1/c;


# direct methods
.method constructor <init>(Lv1/c;)V
    .locals 0

    iput-object p1, p0, Lv1/c$a;->a:Lv1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method
