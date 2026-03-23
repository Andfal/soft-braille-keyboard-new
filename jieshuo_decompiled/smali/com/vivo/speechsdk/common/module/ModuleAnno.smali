.class public interface abstract annotation Lcom/vivo/speechsdk/common/module/ModuleAnno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/vivo/speechsdk/common/module/ModuleAnno;
        lazyLoad = true
        singleTon = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract lazyLoad()Z
.end method

.method public abstract singleTon()Z
.end method
